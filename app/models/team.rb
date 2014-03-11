class Team < ActiveRecord::Base
	has_many :players
	has_many :coaches
	validates :name, presence: true
	has_many :home_games, class_name: 'Game', foreign_key: 'home_team_id'
	has_many :away_games, class_name: 'Game', foreign_key: 'away_team_id'

	# def win
	# 	win = 0
	# 	games.where("home_team_id == #{params[:id]} OR away_team_id== #{params[:id]} ").each do |game|
	# 		win +=1 if game.winner == self.name
	# 	end
	# 	win
	# end


	# def loss

	# end

	# def tie

	# end

	def gamesPlayed

	end

	def getHeadCoachName
		hasHeadCoach ? coaches.where(title: 'Head Coach').first.name : 'N/A'
	end

	private
	def hasHeadCoach
      coaches.where(title: 'Head Coach').size != 0
    end
end
