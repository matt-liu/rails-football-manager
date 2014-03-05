class Player < ActiveRecord::Base
	 validates :name, :team, :number, :age, presence: true
end
