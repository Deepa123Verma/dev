class UsersController < ApplicationController
  def index
    @users = User.all
    # render json: @users
  end

  private
    def user_params
      params.require(:user).permit(:email_address, :password, :avatar)
    end
end
