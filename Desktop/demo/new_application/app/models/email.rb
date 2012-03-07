class Email < ActiveRecord::Base
validates_presence_of :email
validates_presence_of :check
belongs_to :user
end
