class Poi < ActiveRecord::Base
  acts_as_gmappable :lat=>"lat", :lng =>"lng", :process_geocoding => false
  attr_accessible :address, :lat, :lng, :points 
  reverse_geocoded_by :lat, :lng
  after_validation :reverse_geocode
  has_many :users, :through => :collectible
  has_many :collectible
  belongs_to :interaction   
  
  def collected(poi, user)
    Collectible.create!(:poi_id=>poi.id, :user_id=>user.id, :points=> interaction.points)
  end
  def poi_points(p_point)
    pp= points.to_i + p_point.points
    update_attributes!(:points =>pp)
  end
  
  def collect(poi)
    poi = interaction.update_attributes(:points =>interaction.solve)
  end
  
  def collected?
    interaction.points != nil
  end
end
