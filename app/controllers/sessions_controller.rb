class SessionsController < ApplicationController
  def new
  end

  # creating a new user session when a user logs in
  def create
      user = User.find_by :name => params[:name]
      if user.present?
          session[:user_id] = user.id
          redirect_to root_path
      else
          redirect_to root_path
      end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
