class Task < ActiveRecord::Base

validates_presence_of :owner, :content
belongs_to :user

end
