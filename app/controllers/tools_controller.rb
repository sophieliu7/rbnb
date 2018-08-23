class ToolsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]


  def index
    @tools = policy_scope(Tool)
  end

  def show

    @tool = Tool.find(params[:id])
    @user = @tool.user

    if @user.latitude.nil? || @user.longitude.nil?
      @markers = []
    else
    @markers = [{lat: @user.latitude, lng: @user.longitude}]
    end

    @reservation = Reservation.new
    # @tool = Tool.find(params[:tool_id])
    # authorize @reservation
    authorize @tool


    @reservations = Reservation.where(tool_id: @tool)
    @reviews = Review.where(reservation_id: @reservations)

  end



  def new
    @tool = Tool.new
    authorize @tool
  end

  def create
    @tool = Tool.new(tool_params)
    @tool.user = current_user
    authorize @tool
    if @tool.save!
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
