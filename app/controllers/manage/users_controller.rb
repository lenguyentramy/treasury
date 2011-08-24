class Manage::UsersController < Manage::BaseController
  load_and_authorize_resource
  def index
    @users = User.paginate(:page => params[:page])
  end
  def banned    
    @user = User.find_by_id(params[:user_id])
    @user.block_unblock unless @user.admin
    redirect_to :back
  end
  def update
    update!{ manage_users_url }
  end
  

end

