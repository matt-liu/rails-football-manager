class Team < ActiveRecord::Base
	has_many :players
	has_many :coaches
	validates :name, presence: true
	has_many :home_games, class_name: 'Game', foreign_key: 'home_team_id'
	has_many :away_games, class_name: 'Game', foreign_key: 'away_team_id'

	def getHeadCoachName
		hasHeadCoach ? coaches.where(title: 'Head Coach').first.name : 'N/A'
	end

	private
	def hasHeadCoach
      coaches.where(title: 'Head Coach').size != 0
    end
end
