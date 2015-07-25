class PostsController < ApplicationController

  def index
    @posts = Post.all
    @frontpost = @posts.sort_by{|posts| posts.created_at}
    @firstpost = @frontpost.first
  end

  def show
    @showpost = Post.find(params[:id].to_i)
  end




end
