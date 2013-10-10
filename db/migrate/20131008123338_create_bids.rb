class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.string :bidder
      t.integer :amount
      t.references :car, index: true

      t.timestamps
    end
    add_index :bids, :car_id
  end
end
