class FootballManagerController < ApplicationController
	def index
		@teams = Team.all
  end
end
