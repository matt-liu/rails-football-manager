class Team < ActiveRecord::Base
	has_many :players#, :coach
	validates :name, presence: true
end
