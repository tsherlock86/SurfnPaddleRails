class Author < ActiveRecord::Base

has_many :posts

validates_presence_of :author_id, :name

end
