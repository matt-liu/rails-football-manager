class TransferController < ApplicationController
	def index
		@teams = Team.all
		@players = Player.all
	end

	def transfer_player
		@player = Player.find(params[:player_id])

	  respond_to do |format|
	    if @player.update(team_id: params[:team_id])
	      format.js { render "transfer_player", :player => @player }
	      format.html
	      format.json
			end
		end
	 end
end
