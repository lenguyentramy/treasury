class CreateMultipleChoices < ActiveRecord::Migration
  def self.up
    create_table :multiple_choices do |t|
      t.string :question
      t.string :anwers
      t.integer :result
    end
    create_citier_view(MultipleChoice)
  end

  def self.down
    drop_table :multiple_choices
    drop_citier_view(MultipleChoice)
  end
end
