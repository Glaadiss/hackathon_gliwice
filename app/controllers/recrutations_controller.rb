class RecrutationsController < ApplicationController
  before_action :get_company
  def index
    @recrutations = @company.recrutations
  end

  def show
    @recrutation = Recrutation.find(params[:id])
    @notification = Notification.new
    @notifications = @recrutation.notifications.where('status' => 0)
    @my_notification = current_user.notifications.where('recrutation_id' => @recrutation.id).count
  end

  def new
    @recrutation = @company.recrutations.new
  end

  def destroy
    Recrutation.destroy(params[:id])
    redirect_to @company
  end

  def create
    @recrutation = @company.recrutations.new(recrutations_params)
    @recrutation.job_id = Job.find_by_name(params[:job]).try(:id)
    if @recrutation.save!
      redirect_to @company
    else
      render 'new'
    end
  end

  private

  def get_company
    @company = Company.find(params[:company_id])
  end

  def recrutations_params
    params.require(:recrutation).permit(:dependency, :salary, :description, :offer, :nice_have, :additional, :title)
  end
end
