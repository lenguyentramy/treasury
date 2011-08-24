Given /^a poi with lat (\d+) and with interaction$/ do |lat|
  poi= Poi.create!(:lat=>lat, :lng =>10)
  @inter= Interaction.create!(:title =>"Titlestring", :text=> "Textstring")
  @inter.pois << poi
end
