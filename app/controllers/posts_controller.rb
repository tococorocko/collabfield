class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def hobby
    @posts = Post.all
  end

  def study

  end
  def team

  end
end
