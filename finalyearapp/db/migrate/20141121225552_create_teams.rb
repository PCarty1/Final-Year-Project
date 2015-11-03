class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :level
      t.text :kit_image
      t.integer :manager_id
      t.integer :club_id

      t.timestamps
    end
  end
end
