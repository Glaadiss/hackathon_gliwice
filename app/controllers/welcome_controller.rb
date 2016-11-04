class WelcomeController < ApplicationController

  before_action :check_role

  def index
  end

  def welcome2
  end

  def check_role
    if user_signed_in?
      if current_user.role == 1
        # redirect_to company_path(Company.find_by_id(current_user.company_id))
        redirect_to companies_path
      else
        redirect_to companies_path
      end
    end
  end

end
