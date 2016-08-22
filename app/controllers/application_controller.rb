class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:role_id, :first_name, :last_name, :gender, :birth_date])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role_id, :first_name, :last_name, :gender, :birth_date])
  end

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Access denied!"
    redirect_to jobs_path
  end
end
