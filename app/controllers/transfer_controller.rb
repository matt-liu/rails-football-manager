class TransferController < ApplicationController
	def index
		@teams = Team.all
		@players = Player.all
	end

	def transfer_player
		@player = Player.find(params[:player_id])
		if @player.team_id == params[:team_id]
				flash[:alert] = "SAME TEAM"
	  	elsif @player.update(team_id: params[:team_id])
	  		flash[:alert] = "SUCCESS"
	  	end
  	end
end
