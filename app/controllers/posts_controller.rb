class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def hobby
    @posts = Post.where(category="Hobby")
  end
  def study

  end
  def team

  end
end
