class UsersController < Devise::RegistrationsController
  before_action :authenticate_user!

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      sessions[:user_id] = @user.id
      redirect_to welcome_path
    else
      redirect_to login_path
    end
  end

  def page_requires_login
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
