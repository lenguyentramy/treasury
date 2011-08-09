# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

admin= User.create!(:username =>"Admin", :email => 'admin@exp.com', :password=>"123456")
admin.toggle!(:admin)

99.times do |n|

User.create!(:username =>"User#{n+1}",
            :email => "user#{n+1}@exp.com",
            :password=>"123456")
  
end

20.times do
  lat = rand(180)-90+0.345454645
  lng = rand(360)-180+0.9301112
  Poi.create!(:lat=> lat, :lng =>lng)
end