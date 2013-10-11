class AddUserToCars < ActiveRecord::Migration
  def change
    add_column :cars, :creator, :integer
  end
end
