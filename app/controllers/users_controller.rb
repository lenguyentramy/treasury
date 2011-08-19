class UsersController < InheritedResources::Base
  def show
    @user = User.find_by_id(params[:id])
   @summe= @user.sum(current_user)
  end

end
