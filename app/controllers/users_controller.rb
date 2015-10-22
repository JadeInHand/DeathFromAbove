class UsersController < ApplicationController

	def create
		user_details = user_params 
    @user = User.new user_details

    respond_to do |format|
      if @user.save
        session[:user_id] = @user.id
        format.html { redirect_to "/", notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { redirect_to "/" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
	end

	private

  def user_params
    params.require(:user).permit(:name.downcase)
  end

end