class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @tools = current_user.tools
    @reservations = current_user.reservations
  end

end
