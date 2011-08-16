class Poi < ActiveRecord::Base
  acts_as_gmappable :lat=>"lat", :lng =>"lng", :process_geocoding => false
  attr_accessible :address, :lat, :lng, :points 
  reverse_geocoded_by :lat, :lng
  after_validation :reverse_geocode
  
  
  has_many :users, :through => :collected_poi
  has_many :collected_poi   
  
   def gmaps4rails_address
     "#{self.street}, #{self.city}, #{self.country}" 
   end
   
end
