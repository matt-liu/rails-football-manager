class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.string :name
      t.string :team
      t.string :title

      t.timestamps
    end
  end
end
