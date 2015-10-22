class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :current_user

  private
  def current_user
    if session[:user_id].present?
        @current_user ||= User.find(session[:user_id])
        session[:user_id] = nil unless @current_user.present?
    end
  end
  
end
