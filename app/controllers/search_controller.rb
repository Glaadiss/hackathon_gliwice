class SearchController < ApplicationController
  def find
  end

  def index
    @job = Job.where("name like ?", "%#{params[:name]}%").first
    @recrutations = @job.present? ? @job.recrutations : []
  end
end
