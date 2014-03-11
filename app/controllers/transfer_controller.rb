class TransferController < ApplicationController
	def index
		@teams = Team.all
		@players = Player.all
	end

<<<<<<< HEAD
end
=======
	def transfer_player
		@player = Player.find(params[:player_id])
		
		respond_to do |format|
	  		if @player.update(team_id: params[:team_id])
	  			format.js
				format.html { redirect_to @player, notice: 'Player was successfully transferred.' }
        		format.json { render action: 'show', status: :created, location: @player }
      		else
      			format.js
        		format.html { render action: 'new' }
        		format.json { render json: @player.errors, status: :unprocessable_entity }
      		end
  		end
    		
  	end
end
>>>>>>> ded25d0e558b93cb3d84a234a3d3cfd2029a6470
