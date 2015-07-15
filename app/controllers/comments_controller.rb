class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def commentable
    comment_params[:commentable_type] == "Question" ? Question : Answer
  end

  def create
    @comment = commentable.find(comment_params[:commentable_id]).comments.build(comment_params.merge(user_id: current_user.id))
    @comment.save
    if request.xhr?
      render :create, layout: false
    else
      redirect_to @comment.commentable
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :user_id, :commentable_id, :commentable_type)
  end
end
