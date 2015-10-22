class PagesController < ApplicationController
  def index
  	@user = User.new
  	if @current_user && @current_user.present?
  		gon.username = @current_user.name
  	end
  	gon.user = @current_user
  	@highscores = Highscore.all
  	@highscores = @highscores.order(score: :desc)
  end

end
