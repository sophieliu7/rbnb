class UsersController < ApplicationController

  skip_after_action :verify_authorized, except: :index, unless: :skip_pundit?
  skip_after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  def show
    @user = User.find(params[:id])
  end
end
