class NotificationsController < ApplicationController
  before_action :get_recrutation_company, except: [:accept_notification, :refuse_notification]

  def new
    @notification = @recrutation.notifications.new
  end

  def create
    @notification = @recrutation.notifications.new(notify_params)
    @notification.user = current_user
    @notification.status = 0
    if @notification.save
      redirect_to company_recrutation_notification_path(params[:company_id], params[:recrutation_id], @notification.id)
    else
      render 'new'
    end
  end

  def show
    @notification = Notification.find(params[:id])
  end

  def destroy
    Notification.destroy(params[:id])
    redirect_to @recrutation
  end

  def accept_notification
    @notification = Notification.find(params[:id])
    @notification.update(status: 1)
    redirect_to company_recrutation_path(@notification.recrutation.company.id, @notification.recrutation.id)
  end

  def refuse_notification
    @notification = Notification.find(params[:id])
    @notification.update(status: 0)
    redirect_to company_recrutation_path(@notification.recrutation.company.id, @notification.recrutation.id)
  end

  def index
    @notifications = @recrutation.notifications
  end

  private

  def notify_params
    params.require(:notification).permit(:document)
  end
  def get_recrutation_company
    @company = Company.find(params[:company_id])
    @recrutation = Recrutation.find(params[:recrutation_id])
  end

end
