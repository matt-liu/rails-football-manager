class FootballManagerController < ApplicationController

	def index
		@players = Player.all
	end

end
