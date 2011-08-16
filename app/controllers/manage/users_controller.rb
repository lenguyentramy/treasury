class Manage::UsersController < Manage::BaseController
  load_and_authorize_resource
  def index
    @users = User.paginate(:page => params[:page])
  end
  def banned
    redirect_to :back
  end
end

