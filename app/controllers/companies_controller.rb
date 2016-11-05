class CompaniesController < ApplicationController
  before_action :find_company, only: ['show']

  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(companies_params)
    if @company.save
      redirect_to @company
    else
      render 'new'
    end
  end

  def show
    @recrutations = @company.recrutations
  end

  private

  def companies_params
    params.require(:company).permit(:name, :nip, :map, :address, :description)
  end

  def find_company
    @company = Company.find(params[:id])
  end
end
