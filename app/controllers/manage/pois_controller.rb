class Manage::PoisController < Manage::BaseController
  load_and_authorize_resource
  
  def index
    @pois = Poi.paginate(:page => params[:page])
  end
end
