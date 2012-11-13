class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def logged_in?
    !!session[:user_id]
  end
  helper_method :logged_in?

  def current_user
    @user ||= User.find(session[:user_id]) if logged_in?
  end
  helper_method :current_user
end
