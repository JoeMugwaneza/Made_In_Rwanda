class PostsController < ApplicationController
  def index
    @posts = Post.all.order('created_at DESC')
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
  end

  def create
    title = params[:title]
    body = params[:body]

    @post = Post.create(title: title, body: body)

    redirect_to @post
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
  end

  def destroy
  end
end
