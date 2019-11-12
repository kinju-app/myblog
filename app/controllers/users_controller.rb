class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.create(user_params)
  	# @user.save
  	redirect_to users_path
  end

  private

  def user_params
  	params.require(:user).permit(:username, :email, :password)
  end

end
