class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :sign_out_banner
  helper :all
    
  def after_sign_in_path_for(user)
    if user.is_a?(User) && user.banned?
      sign_out user
      flash[:notice] = 'Bye'
      root_path
    else
      user
    end
   end
   
   def sign_out_banner
     if user_signed_in? && current_user.banned?
       sign_out current_user
       flash[:notice] = 'STOP!'
       
     end
   end
end
