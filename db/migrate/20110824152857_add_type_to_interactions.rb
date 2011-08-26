class AddTypeToInteractions < ActiveRecord::Migration
  def self.up
    add_column :interactions, :type, :string
  end

  def self.down
    remove_column :interactions, :type
  end
end
