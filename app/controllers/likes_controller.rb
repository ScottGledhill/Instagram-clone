class LikesController < ApplicationController

  def create
    @posts = Post.find(params[:post_id])
    @posts.likes.create
    redirect_to root_path
  end
end
