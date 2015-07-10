class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: user_params[:email])
    if @user.password == params[:password]
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:notice] = "Invalid Username or Password"
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end