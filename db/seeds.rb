# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
require 'factory_girl'
require 'database_cleaner'

admin= User.create!(:username =>"Admin", :email => 'admin@exp.com', :password=>"123456",:blocked => false)
admin.toggle!(:admin)

99.times do |n|

user= User.create!(:username =>"User#{n+1}",
            :email => "user#{n+1}@exp.com",
            :password=>"123456")  
end
@inter= Interaction.create!(:title =>"Titlestring", :text=> "Textstring")

20.times do |n|
  lat = 50 + (rand * 3)
  lng = 10 + (rand * 3)
  poi= Poi.create!(:lat=> lat, :lng =>lng)
  @inter.pois << poi
end

