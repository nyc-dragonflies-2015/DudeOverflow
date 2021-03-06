class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.find_by(username: user_params[:username])
    unless user
      @user = User.create(user_params)
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:notice] = "User Already Exists"
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
