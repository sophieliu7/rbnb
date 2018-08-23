class ToolsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]


  def index
    if params[:query].present?
      @tools = policy_scope(Tool).global_search(params[:query])
    else
      @tools = policy_scope(Tool)
    end
  end

  def show

    @tool = Tool.find(params[:id])
    @user = @tool.user
    authorize @tool
    @reservation = Reservation.new
    # @tool = Tool.find(params[:tool_id])
    # authorize @reservation

    # Creation disabled dates
    @reservations = Reservation.where(tool_id: @tool.id)
    @reservations_dates = []
    @reservations.each do |reservation|
      reservation_end_date = reservation.start_date + reservation.duration
      @reservations_dates << {
        from: reservation.start_date,
        to: reservation_end_date
        }
    end

    # Creation Map
    if @user.latitude.nil? || @user.longitude.nil?
      @markers = []
    else
      @markers = [{lat: @user.latitude, lng: @user.longitude}]
    end
<<<<<<< HEAD

    @reservation = Reservation.new
    # @tool = Tool.find(params[:tool_id])
    # authorize @reservation
    authorize @tool


    @reservations = Reservation.where(tool_id: @tool)
    @reviews = Review.where(reservation_id: @reservations)

=======
>>>>>>> 5cf9dfd461c7d93f5b5bb0d6a389aa76fd64a6a4
  end



  def new
    @tool = Tool.new
    authorize @tool
  end

  def create
    @tool = Tool.new(tool_params)
    @tool.user = current_user
    authorize @tool
    if @tool.save
      redirect_to tools_path
    else
      render :new
    end
  end

  def edit
    @tool = Tool.find(params[:id])
    authorize @tool
  end

  def update
    @tool = Tool.find(params[:id])
    authorize @tool
    if @tool.update!(tool_params)
      redirect_to tools_path
    else
      render :update
    end
  end

  def destroy
    @tool = Tool.find(params[:id])
    authorize @tool
    @tool.destroy
    redirect_to tools_path
  end

  private

    def tool_params
    params.require(:tool).permit(:name, :price_per_day, :description, :place, :photo)
  end
end
