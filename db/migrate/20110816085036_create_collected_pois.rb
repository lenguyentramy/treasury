class CreateCollectedPois < ActiveRecord::Migration
  def self.up
    create_table :collected_pois do |t|
      t.integer :user_id
      t.integer :poi_id
      t.integer :points

      t.timestamps
    end
  end

  def self.down
    drop_table :collected_pois
  end
end
