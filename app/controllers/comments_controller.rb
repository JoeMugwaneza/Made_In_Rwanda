class CommentsController < ApplicationController
  
  def create
    @comment = Comment.new(comment_params)
    @comment.post_id = params[:post_id]

    if @comment.save
      redirect_to "/posts/#{params[:post_id]}" 
    end
  end

  def destroy
    @post = Post.find_by(id: params[:post_id])
    @comment = @post.comments.find_by(id: params[:id])
    @comment.destroy

    redirect_to post_path(@post)
    
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :body, :post_id)
    
  end


end
