class Interaction < ActiveRecord::Base
  acts_as_citier
  has_many :pois

  def solve
    rand(10)
  end
  
  def an_interaction
    puts "Yippy!"
  end
end
