class MessageController < ApplicationController
def add
@message=Message.create(params[:value])
p params[:value]
@message.sender_id = current_user.id
#@a=User.find_all_email(params[:email][:value])
#@message.receiver_id=@a.email
end
def show
end
end
