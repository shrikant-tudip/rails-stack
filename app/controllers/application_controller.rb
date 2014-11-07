class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :exception
 
  private
  def after_sign_in_path_for(resource)
    user_landing_page(resource)
  end
  
  def user_landing_page(resource)
    if resource.admin?
      admin_dashboard_path
    else
      normal_user_dashboard_path  
    end      
  end
end