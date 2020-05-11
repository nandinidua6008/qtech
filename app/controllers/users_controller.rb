class UsersController < ApplicationController
	def index
		@user=User.all
		
	end

	def new
		@user=User.new
	end

	def create
		@user=User.new(user_params)
		
		if @user.save
			 redirect_to sessions_new_path
			#abort params.inspect
		else
			abort(@user.errors.inspect)
		end
	end

	private
		def user_params
			params.require(:user).permit(:id,:email,:firstname,:lastname,:DOB,:gender,:phone_number,:password,:rpassword)
		end
end
