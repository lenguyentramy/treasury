class Interaction < ActiveRecord::Base
  has_many :pois
  def solve
    rand(10)
  end
end
