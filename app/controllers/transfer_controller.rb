class TransferController < ApplicationController
	def index
		@teams = Team.all
		@players = Player.all
	end

	def transfer_player
		@player = Player.find(params[:player_id])
	  @player.update(team_id: params[:team_id])
	end
end
