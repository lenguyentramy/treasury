class RenameCollectedPois < ActiveRecord::Migration
  def self.up
    rename_table :collected_pois, :collectibles
  end

  def self.down
    rename_table :collectibles, :collected_pois
  end
end
