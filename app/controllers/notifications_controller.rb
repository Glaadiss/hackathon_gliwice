class NotificationsController < ApplicationController
  before_action :get_recrutation_company
  def new
    @notification = @recrutation.notifications.new
  end

  def create
    @notification = @recrutation.notifications.new(notify_params)
    @notification.user = current_user
    if @notification.save
      
  end

  def show

  end

  def destroy

  end

  def index

  end

  private

  def notify_params
    params.require(:notification).permit(:attachment)
  end
  def get_recrutation_company
    @company = Company.find(params[:company_id])
    @recrutation = Recrutation.find(params[:recrutation_id])
  end

end
