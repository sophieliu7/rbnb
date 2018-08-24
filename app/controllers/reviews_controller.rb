class ReviewsController < ApplicationController
  def new
    @reservation = Reservation.find(params[:reservation_id])
    @review = Review.new
    authorize @review
  end

  def create

    @reservation = Reservation.find(params["review"]["reservation"])
    @review = Review.new(review_params)
    @review.reservation = @reservation
    @review.save

    redirect_to tool_path(params["tool_id"])

=begin
    if review.save
    respond_to do |fomat|
      format. html {redirect_to ici on colle la redirection}
      format.js
    else
    respond_to do |format|
      format.html {render "review/show"}
      format.js { ici on colle le redirect}
    end
=end



    authorize @reservation
  end

  private
    def review_params
      params.require(:review).permit(:feedback, :rating, :reservation_id)
    end
end
