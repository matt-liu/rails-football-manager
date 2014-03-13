class Game < ActiveRecord::Base
	belongs_to :home_team, class_name: 'Team' , foreign_key: 'home_team_id'
	belongs_to :away_team, class_name: 'Team', foreign_key: 'away_team_id'
	validates :home_team_id, :date, :away_team_id, presence: true
	validate :home_and_away_teams_are_different
	validates :home_team_score, :away_team_score, :numericality => { :greater_than_or_equal_to => 0 }
	validate :date_not_future

	def home_and_away_teams_are_different
		if home_team_id == away_team_id
			errors.add(:away_team_id, "must be different from home team")
		end
	end

	def date_not_future
		if date > Date.current
			errors.add(:date, "cannot be in the future")
		end
	end

	def winner
		return home_team.name if home_team_score > away_team_score
		return away_team.name if home_team_score < away_team_score
		return 'tie' if home_team_score == away_team_score
	end

end
