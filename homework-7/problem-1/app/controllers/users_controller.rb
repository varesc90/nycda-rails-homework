class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def show
		finduser
	end

	def edit
		finduser
	end

	def update
		finduser
		if (user_signed_in? && @user == current_user) || current_user.admin?
		@user.update(params[:user].permit(:email,:name,:headline,:profile))
		end
		if @user.valid?
			redirect_to_page(user_path(@user),'The user was updated')
		end
	end



	def finduser
		@user = User.find(params[:id])
	end

	def redirect_to_page(path,notice)
		redirect_to(path,notice: notice)
	end
end
