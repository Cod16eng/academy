class UsersController < ApplicationController
	skip_before_action :require_user, only: [:new, :create]
	skip_before_action :require_admin, only: [:show, :edit, :update]
	before_action :set_user, only: [:edit, :update, :show, :destroy]

	def index
		@users = User.paginate(page: params[:page], per_page: 10).order('created_at DESC')
	end

	def new
		@user= User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
		  flash[:notice] = "User #{@user.name} added "
		  redirect_to root_path
		else
		  render 'new'
		end
	end

	def update
		if @user.update(user_params)
		  flash[:notice] = "Profile of #{@user.name} was updated"
		  redirect_to user_path(@user)
		else
		  render 'new'
		end

	end

	def show

	end

	def edit

	end

	def destroy
		@user.destroy
		flash[:notice] = "User deleted"
	    redirect_to users_path

	end


	private


	def set_user
		@user = User.find(params[:id])
	end

	def user_params
		# List of common params
        list_params_allowed =[:username, :first_name, :last_name, :email, :password, :password_confirmation]
        # Add the params only for admin
  		list_params_allowed << [:admin] if logged_in? && current_user.admin?
		params.require(:user).permit(list_params_allowed)
	end
 end
