class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post

  def create
    @comment = @post.comments.new(comment_params)
    @comment.user = current_user
    if(@comment.save)
      redirect_to @post, notice: 'Comment saved.'
    else
      redirect_to @post, notice: 'Comment could not saved.'
    end
  end



  def destroy
  end

  def set_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end
