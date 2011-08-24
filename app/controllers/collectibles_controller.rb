class CollectiblesController < ApplicationController
  def create
    @poi= Poi.find_by_id(params[:poi_id])
    @poi.collect(@poi)
    redirect_to :back
    if @poi.collected?
      unless current_user.pois.include?(@poi)
        points = @poi.collected(@poi,current_user)
        @poi.poi_points(points)
      end
    end
  end
end
