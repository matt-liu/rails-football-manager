class Team < ActiveRecord::Base
	has_many :players
	has_many :coaches
	validates :name, presence: true

	def getHeadCoachName
		hasHeadCoach ? coaches.where(title: 'Head Coach').first.name : 'N/A'
	end

	private
	def hasHeadCoach
      coaches.where(title: 'Head Coach').size != 0
    end
end
