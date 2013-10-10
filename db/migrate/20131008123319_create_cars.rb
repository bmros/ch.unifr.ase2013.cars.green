class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :title
      t.string :brand
      t.string :model
      t.integer :mileage
      t.string :color
      t.integer :startprize
      t.integer :buyoutprize
      t.datetime :duration
      t.string :description

      t.timestamps
    end
  end
end
