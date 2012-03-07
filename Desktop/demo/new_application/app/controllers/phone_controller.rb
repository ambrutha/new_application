class PhoneController < ApplicationController
def index
@use = Phone.find_all_by_users_id(current_user.id)
end

def new
@u = Phone.new
end

def create
@u = Phone.create(params[:phone])
@u.users_id=current_user.id
if @u.save
 redirect_to phone_index_path
else
render :new
end
end

def show
@u = Phone.all
end

def edit
@u =Phone.find_all_by_users_id(current_user.id)
end

def update
@u =Phone.find_by_id(params[:id])
if @u.update_attributes(params[:phone])
 redirect_to phone_index_path
else
render :edit
end
end

def destroy
@u =Phone.find_by_id(params[:id])
if @u.destroy
redirect_to :action=>"index"
end
end
def verify
@u = Phone.all
end
end
