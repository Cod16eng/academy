class SessionsController < ApplicationController
skip_before_action :require_user, only: [:new, :create]
skip_before_action :require_admin
	def new

	end

	def create
		user = User.find_by(email: params[:sessions][:email].downcase)
		if user && user.authenticate(params[:sessions][:password])
			session[:user_id] = user.id
			flash[:notice] = "You have successfully logged in"
			redirect_to root_path

		else
			flash.now[:error] = "Your login information is incorect"
			render 'new'
		end
	end

	def destroy
		session[:user_id] = nil
		flash[:notice] = "You have successfully logged out"
		redirect_to root_path
	end
end
