class AddInteractionIdToPois < ActiveRecord::Migration
  def self.up
    add_column :pois, :interaction_id, :integer
  end

  def self.down
    remove_column :pois, :interaction_id
  end
end
