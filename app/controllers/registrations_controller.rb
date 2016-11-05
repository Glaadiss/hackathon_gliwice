class RegistrationsController < Devise::RegistrationsController
  protected
  def after_sign_up_path_for(resource)
    current_user == 1 ? new_company_path : '/search/find'
  end
end
