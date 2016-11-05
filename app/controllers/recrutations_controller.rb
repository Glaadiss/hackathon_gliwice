class RecrutationsController < ApplicationController
  before_action :get_company
  def index
    @recrutations = @company.recrutations
  end

  def show
    @recrutation = Recrutation.find(params[:id])
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
    @recrutation.job_id = 1
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
    params.require(:recrutation).permit(:job_id, :dependency, :salary, :description, :offer, :nice_have, :additional, :title)
  end
end
