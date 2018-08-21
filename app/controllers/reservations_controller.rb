class ReservationsController < ApplicationController
  skip_after_action :verify_authorized, except: :index
  skip_after_action :verify_policy_scoped, only: :index


  def index
    @reservations = Reservation.where(user: current_user)
  end

  def new
    @reservation = Reservation.new
    @tool = Tool.find(params[:tool_id])
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @tool = Tool.find(params[:tool_id])
    @reservation.user = current_user
    @reservation.tool = @tool
    if @reservation.save!
      redirect_to tool_path(@tool)
    else
      render :new
    end
  end

  def destroy
    @reservation = Reservation.find(reservation_params)
    @reservation.destroy
  end

  private
    def reservation_params
      params.require(:reservation).permit(:start_date, :duration)
    end
end
