class Poi < ActiveRecord::Base
  acts_as_gmappable :lat=>"lat", :lng =>"lng", :process_geocoding => false
  attr_accessible :address, :lat, :lng 
  reverse_geocoded_by :lat, :lng
  after_validation :reverse_geocode
     
   def gmaps4rails_address
     "#{self.street}, #{self.city}, #{self.country}" 
   end
end
