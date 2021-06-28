class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :logged_in?

  def logged_in?
    !current_user.nil?  
  end

  def authorize!
    redirect_to welcome_path unless logged_in?
  end

  protected

 def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:type, :email, :password, :password_confirmation])
 end
end
