class Player < ActiveRecord::Base
	belongs_to :team
	validates :name, :number, :age, presence: true
	
  def self.find_player(search_params)
    Player.where("name LIKE ? OR number LIKE ?", "%#{search_params}%", "%#{search_params}%")
  end
end
