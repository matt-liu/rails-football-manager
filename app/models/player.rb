class Player < ActiveRecord::Base
	belongs_to :team
	validates :name, :number, :age, presence: true

  def self.find_player(search_params)
    # Player.where("name like ? or number like ?", "%#{search_params}%", "%#{search_params}%")
    # Player.where(name: search_params).to_a.concat(Player.where(number: search_params).to_a)
    # Player.where('name like ?','#{search_params}').to_a.concat(Player.where(number: search_params).to_a)
    # Player.where("name ~ ? or number = ?", "#{search_params}", "#{search_params}")
    # Player.where("name LIKE ? || number LIKE ?", "%#{search_params}%", "%#{search_params}%")
    # Player.where("name = #{search_params}").to_a.concat(Player.where("number = #{search_params}").to_a)
    # Player.where(:name.to_s.include? search_params).to_a.concat(Player.where(:number.to_s.include? search_params).to_a)
  	# Player.where("name ~ search_params")
    Player.where("name ~ ?", "#{search_params}").to_a.concat(Player.where(number: search_params).to_a)
    # Player.where(name: search_params).to_a.concat(Player.where(number: search_params).to_a)
    # Player.where(:name.to_s.include? search_params).to_a
    # Player.find(:all, :conditions => ["name like :search || number like :search", {search: "%#{search_params}%"}])
  end

end
