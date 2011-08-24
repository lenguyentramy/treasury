require 'spec_helper'

describe Poi do
  before(:each) do
    @poi = Poi.create(:lat=>10, :lng=>10)
    inter= Interaction.create(:title => "Test", :text => "Text")
    inter.pois << @poi
  end
  
  describe "collectible" do
    before(:each) do
    @user= User.create!(:username =>"User",
                  :email => "user@exp.com",
                  :password=>"123456")    
    end
    
    it "should collect"do
      @poi.collect(@poi)
      @poi.interaction.points.should_not be_nil
    end
    
    it "should collected by user" do
      
      collect= @poi.collected(@poi, @user)
      collect.should be_true
    end
  end
end
