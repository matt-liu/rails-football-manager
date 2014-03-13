class Player < ActiveRecord::Base
	belongs_to :team
	validates :name, :number, :age, presence: true

  def self.find_player(search_params)
    # Player.where("name LIKE ? OR number LIKE ?", "%#{search_params}%", "%#{search_params}%")
    Player.where(name: search_params).to_a.concat(Player.where(number: search_params).to_a)
    # Player.where("name LIKE #{search_params}").to_a.concat(Player.where("number LIKE #{search_params}").to_a)
    # Player.find(:all, :conditions => ["name like :search || number like :search", {search: "%#{search_params}%"}])
  end

end
