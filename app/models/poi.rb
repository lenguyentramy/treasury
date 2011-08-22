class Poi < ActiveRecord::Base
  acts_as_gmappable :lat=>"lat", :lng =>"lng", :process_geocoding => false
  attr_accessible :address, :lat, :lng, :points 
  reverse_geocoded_by :lat, :lng
  after_validation :reverse_geocode
  
  
  has_many :users, :through => :collectible
  has_many :collectible
  belongs_to :interaction   
  
  def collected(poi, user)
      Collectible.create!(:poi_id=>poi.id, :user_id=>user.id, :points=> rand(10))
  end
  def poi_points(p_point)
    pp= points.to_i + p_point.points
    update_attributes!(:points =>pp)
  end
end
