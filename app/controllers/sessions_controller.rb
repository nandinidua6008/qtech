class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
    else
      flash.now[:alert] = "Email or password is invalid"
      redirect_to login_path
    end
  end

  def destroy
  	session[:user_id] = nil
    redirect_to root_path
  end
  private
  def admins_params
    params.require(:user).permit(:id, :email, :password)
  end

end
