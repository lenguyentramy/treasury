class CreateInteractions < ActiveRecord::Migration
  def self.up
    create_table :interactions do |t|
      t.string :title
      t.string :text
      t.integer :points
      t.timestamps
    end
  end

  def self.down
    drop_table :interactions
  end
end
