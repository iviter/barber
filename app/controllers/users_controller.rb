class UsersController < Devise::RegistrationsController
  before_action :authenticate_user!


  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
