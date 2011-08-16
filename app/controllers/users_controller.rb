class UsersController < ApplicationController
  def show
    @sum = CollectedPoi.where(:user_id => current_user.id).sum(:points)
  end

end
