class ApplicationController < ActionController::Base
  protect_from_forgery
  
  # hallo tra my :)
  
  def after_sign_in_path_for(user)
    user
   end
end
