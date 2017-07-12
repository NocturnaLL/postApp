class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post
  before_action :set_comment, only: [:destroy]
  before_action :authorize_user!, only: [:destroy]

  def create
    @comment = @post.comments.new(comment_params)
    @comment.user = current_user
    if(@comment.save)
      redirect_to @post
      flash[:success] = 'Comment saved.'
    else
      redirect_to @post
      flash[:danger] = "Comment couldn't saved."
    end
  end



  def destroy
    @comment.destroy
    redirect_to @post
    flash[:danger] = "Comment deleted."

  end

  def set_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def authorize_user!
    redirect_to @post, notice: "Not authorized" unless @comment.user_id == current_user.id
  end
end
