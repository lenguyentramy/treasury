# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

admin= User.create!(:username =>"Admin", :email => 'admin@exp.com', :password=>"123456")
admin.toggle!(:admin)
user = User.create!(:username =>"User", :email => 'user@exp.com', :password=>"123456")