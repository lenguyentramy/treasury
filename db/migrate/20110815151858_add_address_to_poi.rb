class AddAddressToPoi < ActiveRecord::Migration
  def self.up
     add_column :pois, :address, :string
     
  end

  def self.down
    remove_column :pois, :address
  end
end
