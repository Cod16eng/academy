class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_user
  before_action :require_admin

  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def require_user
    if !logged_in?
      flash[:notice] = "You must be logged in to perform that action"
      redirect_to login_path
    end
  end

  def require_admin
    if logged_in? and !current_user.admin?
      flash[:notice] = "Only Admins can perform that action"
      redirect_to companies_path
    end
  end
end
