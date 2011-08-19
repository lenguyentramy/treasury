# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

admin= User.create!(:username =>"Admin", :email => 'admin@exp.com', :password=>"123456",:blocked => false)
admin.toggle!(:admin)

99.times do |n|

user= User.create!(:username =>"User#{n+1}",
            :email => "user#{n+1}@exp.com",
            :password=>"123456",
            :blocked => false)  
end

CollectedPoi.create!(:user_id=>1, :poi_id=>1, :points=>10)

20.times do
  lat = 50 + (rand * 5)
  lng = 10 + (rand * 5)
  Poi.create!(:lat=> lat, :lng =>lng)
end

