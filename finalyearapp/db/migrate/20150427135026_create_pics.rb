class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|
      t.string :name
      t.string :image
      t.string :feeling
      t.string :location

      t.timestamps
    end
  end
end
