class CollectiblesController < ApplicationController
  def create
    @poi= Poi.find_by_id(params[:poi_id])
    @poi.interaction.update_attributes(:points =>@poi.interaction.solve)
    @poi.save
    redirect_to :back
  end
end
