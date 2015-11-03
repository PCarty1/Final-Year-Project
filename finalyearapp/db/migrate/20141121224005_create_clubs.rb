class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :homeground
      t.string :location
      t.string :email
      t.string :phone
      t.text :crest
      t.text :info

      t.timestamps
    end
  end
end
