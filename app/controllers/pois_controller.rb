class PoisController < InheritedResources::Base
  actions :show, :index
  def index
    if params[:position].present?
      @pois = Poi.near(params[:position], 1000)
    else
      @pois = Poi.all
    end
  end
end
