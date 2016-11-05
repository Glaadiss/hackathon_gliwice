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
    flash[:notice] = "Usunięto ogłoszenie"
    redirect_to @company
  end

  def create
    @recrutation = @company.recrutations.new(recrutations_params)
    job = Job.find_or_create_by(name: params[:job])
    @recrutation.job_id = job.id
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
