class CreatePois < ActiveRecord::Migration
  def self.up
    create_table :pois do |t|
      t.float :lat
      t.float :lng
      t.integer :points
      t.timestamps
    end
  end

  def self.down
    drop_table :pois
  end
end
