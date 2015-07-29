require 'test_helper'

class PostTest < ActiveSupport::TestCase


  describe Post do
  it 'validates_presence_of summary'
  post = Post.new(:summary => '')
  post.valid?

end
