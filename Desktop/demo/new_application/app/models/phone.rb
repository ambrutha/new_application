class Phone < ActiveRecord::Base
validates_presence_of :phone
belongs_to :user
end
