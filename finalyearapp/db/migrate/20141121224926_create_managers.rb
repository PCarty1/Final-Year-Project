class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.string :name
      t.string :address
      t.date :dateofbirth
      t.integer :contract
      t.integer :yearsexperience
      t.string :nationality
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
