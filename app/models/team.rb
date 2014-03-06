class Team < ActiveRecord::Base
	has_many :player#, :coach
	validates :name, presence: true
end
