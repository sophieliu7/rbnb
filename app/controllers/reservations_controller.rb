class ReservationsController < ApplicationController

  def index
    @reservations = policy_scope(Reservation)
    @tool = Tool.find(params[:tool_id])
  end

  def new
    @reservation = Reservation.new
    @tool = Tool.find(params[:tool_id])
    authorize @reservation
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @tool = Tool.find(params[:tool_id])
    @reservation.user = current_user
    @reservation.tool = @tool
    authorize @reservation
    if @reservation.save
      redirect_to tool_path(@tool)
    else
      render :new
    end
  end

  def destroy
    @reservation = Reservation.find(reservation_params)
    authorize @reservation
    @reservation.destroy
  end

  private
    def reservation_params
      params.require(:reservation).permit(:start_date, :duration)
    end
end
