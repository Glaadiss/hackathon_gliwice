class CompaniesController < ApplicationController
  before_action :find_company, only: ['show']
  def new
    @company = Company.new
  end

  def show
    @recrutations = @company.recrutations
  end

  def find_company
    @company = Company.find(params[:id])
  end
end
