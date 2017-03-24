class PostsController < ApplicationController
  def index
    @posts = Post.all.paginate(:page => params[:page], :per_page => 3).order('created_at DESC')
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
    @post = Post.new
  end

  def create

    @post = Post.new(post_params)
    @post.user_id = current_user.id

    if @post.save
      redirect_to @post
    else 

      render 'new'
    end 
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])

    if @post.update(params[:post].permit(:title, :body))
      redirect_to @post
    else
      render "edit"
    end 
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy

    redirect_to posts_path
  end

  private 

  def post_params
    params.require(:post).permit(:title, :body)
    
  end
end
