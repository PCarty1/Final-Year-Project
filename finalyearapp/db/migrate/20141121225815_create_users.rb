class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.date :dateofbirth
      t.string :gender
      t.string :status
      t.string :password_digest

      t.timestamps
    end
  end
end