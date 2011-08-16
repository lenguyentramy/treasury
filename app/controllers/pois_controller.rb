class PoisController < InheritedResources::Base
  actions :show, :index
  def index
    if params[:position].present?
      @pois = Poi.near(params[:position], 100)
    else
      @pois = Poi.all
    end
  end
  def collected
    @poi = Poi.find_by_id(params[:poi_id])
    if user_signed_in?
      unless current_user.pois.include?(@poi)
        @collected = CollectedPoi.create!(:poi_id=>@poi.id, :user_id=>current_user.id, :points=> rand(10))
        poi_points = @poi.points.to_i + @collected.points
        @poi.update_attributes!(:points =>poi_points)
      end
      redirect_to :back
    else
      redirect_to new_user_session_path
    end
  end
end
