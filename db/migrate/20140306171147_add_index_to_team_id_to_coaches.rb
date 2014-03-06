class AddIndexToTeamIdToCoaches < ActiveRecord::Migration
  def change
  	remove_column :coaches, :team
  	add_column :coaches, :team_id, :integer
  	add_index :coaches, :team_id
  end
end
