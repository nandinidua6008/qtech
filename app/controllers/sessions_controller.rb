class SessionsController < ApplicationController
  def new
  end

  def create

  	user = User.find_by_email(params[:email])
    
    if user && user.authenticate(params[:password])
      
       session[:user_id] = user.id
    redirect_to dashboard
    else
      flash.now[:alert] = "Email or password is invalid"
      redirect_to sessions_new_path
    end

  end

  def destroy
  	session[:user_id] = nil
    redirect_to root_path
  end
  private
  def users_params
    params.require(:user).permit(:id, :email, :password)
  end

end
