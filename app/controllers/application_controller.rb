class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  helper_method :logged_in?

  def logged_in?
    !current_user.nil?  
  end

  def authorize!
    redirect_to welcome_path unless logged_in?
  end
end
