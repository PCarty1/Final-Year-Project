class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :phone
      t.date :dateofbirth
      t.string :gender
      t.integer :squadnumber
      t.string :position
      t.string :height
      t.string :weight
      t.integer :team_id

      t.timestamps
    end
  end
end
