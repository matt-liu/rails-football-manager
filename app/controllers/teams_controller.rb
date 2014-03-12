class TeamsController < ApplicationController
  def new
  end

  def create
  end

  def show
    @team_name = Team.find(params[:id]).name
    @games = Team.find(params[:id]).gamesPlayed
  	set_roster
  end


  private
    def set_roster
      @players = Team.find(params[:id]).players
      @coaches = Team.find(params[:id]).coaches
      rescue ActiveRecord::RecordNotFound
      flash[:notice] = "Sorry, that page does not exist"
      redirect_to root_path
    end
end




