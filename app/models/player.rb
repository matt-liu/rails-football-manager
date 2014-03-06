class Player < ActiveRecord::Base
	belongs_to :team
	validates :name, :number, :age, presence: true
end
