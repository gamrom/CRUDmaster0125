class PostsController < ApplicationController
  def index
    @every_post = Post.all
  end

  def show
    @one_post = Post.find(params[:id])
  end

  def new
  end

  def create
    new_post = Post.new
    new_post.title = params[:title]
    new_post.content = params[:content]
    new_post.save
    redirect_to "/posts/index"
  end

  def edit
    @one_post = Post.find(params[:id])
  end

  def update
    @one_post = Post.find(params[:id])
    @one_post.title = params[:title]
    @one_post.content = params[:content]
    @one_post.save
    redirect_to "/posts/index"
  end

  def delete
    @one_post = Post.find(params[:id])
    @one_post.destroy
    @one_post.save
    redirect_to "/posts/index"
  end
end
