class UsersController < ApplicationController
before_action :authenticate_user!

  def index
  end

  def show
    @user = current_user
    @notifications = current_user.notifications.distinct
  end

end
