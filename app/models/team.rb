class Team < ActiveRecord::Base
	has_many :players
	has_many :coaches
	validates :name, presence: true
	has_many :home_games, class_name: 'Game', foreign_key: 'home_team_id'
	has_many :away_games, class_name: 'Game', foreign_key: 'away_team_id'

	def wins
		gamesPlayed.select { |game| game.winner == self.name}.count
	end

	def losses
		gamesPlayed.select { |game| game.winner != self.name && game.winner != 'tie'}.count
	end

	def ties
		gamesPlayed.select { |game| game.winner == 'tie'}.count
	end

	def gamesPlayed
		self.home_games.to_a.concat(self.away_games.to_a)
	end

	def getHeadCoachName
		hasHeadCoach ? coaches.where(title: 'Head Coach').first.name : 'N/A'
	end

	private
	def hasHeadCoach
      coaches.where(title: 'Head Coach').size != 0
  end
end
