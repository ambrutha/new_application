class HomeController < ApplicationController
#before_filter:authenticate_user!
def index
end
 def after_sign_in_path_for(resource)
   redirect_to "/dashboard/index"
 end
def show
end
end
