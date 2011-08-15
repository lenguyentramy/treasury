class PagesController < ApplicationController
  def home
    @json = Poi.all.to_gmaps4rails
  end

  def contact
  end

end
