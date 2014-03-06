class Team < ActiveRecord::Base
	has_many :players
	has_many :coaches
	validates :name, presence: true
end
