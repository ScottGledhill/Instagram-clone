class PostsController < ApplicationController
  def index

  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      flash[:success] = "Great, another picture no one cares about."
      redirect_to posts_path
    else
      flash[:alert] = "WHAT IS THIS WORLD? NO PICTURE?"
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
  end
  private

  def post_params
    params.require(:post).permit(:caption, :image)
  end

end
