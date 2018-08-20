class ReservationsController < ApplicationController
  before_action:

def index
  @reservation = Reservation.current_user
end

def new
  @reservation = Reservation.new
  reservation.user = current_user
end

def create
end

def destroy
end

end
