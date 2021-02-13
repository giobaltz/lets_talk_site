class PostsController < ApplicationController
  def new; end

  def show
    @post = Post.all
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to @post
  end

  private

  def post_params
    params.require(:post).permit(:user, :text)
  end
end
