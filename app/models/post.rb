class Post < ActiveRecord::Base

  belongs_to :author

  validates_presence_of :title, :body, :summary

end
