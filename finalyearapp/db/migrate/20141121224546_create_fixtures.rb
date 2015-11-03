class CreateFixtures < ActiveRecord::Migration
  def change
    create_table :fixtures do |t|
      t.datetime :datetime
      t.integer :winningscore
      t.integer :losingscore
      t.integer :hometeam_id
      t.integer :awayteam_id
      t.integer :winningteam_id
      t.text :report
      t.string :venue
      t.integer :competition_id

      t.timestamps
    end
  end
end
