class Manage::BaseController < InheritedResources::Base
  before_filter :authenticate_user!
end