class UsersController < ApplicationController

	def index
		@users = User.all


	end

	def show 
		if params[:id] != "sign_out"
			@user = User.find(params[:id])
		else
			sign_out current_user
			redirect_to root_path
		end
	end

end
