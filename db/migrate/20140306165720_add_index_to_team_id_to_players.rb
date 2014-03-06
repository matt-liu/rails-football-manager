class AddIndexToTeamIdToPlayers < ActiveRecord::Migration
  def change
  	remove_column :players, :team
  	add_column :players, :team_id, :integer
  	add_index :players, :team_id
  end
end
