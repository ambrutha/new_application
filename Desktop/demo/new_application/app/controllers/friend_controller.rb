class FriendController < ApplicationController
def index
@friend = Friend.find_all_by_users_id(current_user.id)
end
def create

end

def new
#friend = Friend.new(params[:friend])
end
def add
@img=params[:friend].reject {|key,value| key == "name" }
p @img
@friend=Friend.new(params[:img])
@friend.users_id = current_user.id
#@friend.verifcode=rand(10000000) 
@f=User.find_by_email(params[:friend][:email])
#p "hhhhhhhhhhhhhhhhhh"
#p @f.inspect
@friend.friendid=@f.id
@friend.isaccept=0
#@friend.verifcode=rand(10000) 
@x=@f.email
#@y=@friend.verifcode
p @x
UserMailer.sent(@x).deliver
@friend.save
end

def display
	@friends = Friend.find_all_by_users_id(current_user.id)
end
def edit
@Friend =Friend.find_all_by_users_id(params[:id])
end

def update
@friend =Friend.find_by_id(params[:id])
if @friend.update_attributes(params[:id])
 redirect_to "friend/display"
else
render :edit
end
end

def destroy
@user =Friend.find_by_id(params[:id])
@user.destroy
redirect_to "/friend/display"
end
end
