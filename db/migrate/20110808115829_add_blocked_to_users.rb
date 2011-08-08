class AddBlockedToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :blocked, :boolean
  end

  def self.down
    remove_column :users, :blocked
  end
end
