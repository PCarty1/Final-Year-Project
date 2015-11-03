class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.string :name
      t.decimal :entry_fee
      t.text :rules
      t.string :level
      t.text :prize
      t.text :sponsor

      t.timestamps
    end
  end
end
