class UsersController < ApplicationController
before_action :authenticate_user!

  def index
  end

  def show
    @user = current_user
    @companies = Recrutation.joins(:notifications).where(notifications: {user_id: current_user.id}).distinct
  end

end
