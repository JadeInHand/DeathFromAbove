class HighscoresController < ApplicationController
  before_action :set_highscore, only: [:show, :edit, :update, :destroy]

  def index
    @highscores = Highscore.all
  end

  
  def show
    @highscore = Highscore.find params[:id]
  end

  
  def new
    redirect_to root_path
    @highscore = Highscore.new
  end

 
  def edit
    redirect_to root_path
  end

  def create
    highscore_details = highscore_params

    @highscore = Highscore.new(highscore_details)

    respond_to do |format|
      if @highscore.save
        format.html { redirect_to root_path, notice: 'Highscore was added.' }
        format.json { render root_path, status: :created, location: @highscore }
      else
        format.html { render :new }
        format.json { render json: @highscore.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    redirect_to root_path
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    redirect_to root_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_highscore
      @highscore = Highscore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def highscore_params
      params.require(:highscore).permit(:name, :score)
    end
end
