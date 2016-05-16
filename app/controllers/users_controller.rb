class UsersController < ApplicationController
  def new
  	@user = User.new
  	@users =User.all
  end

  def show
  	@user = User.find(params[:id])
  end
  def create 
	@user = User.create(user_params)
	redirect_to root_path
  end

  private 

  def  user_params
  	params.require(:user).permit(:email , :password, :profile_pic)
  end 
end
