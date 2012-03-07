class FetchController < ApplicationController
def verify
p params[:check][:name]
  @pro=User.find(:all,:conditions=> "username like '%#{params[:check][:name]}%'")
p @pro
end
def show
end
def index
end
end
