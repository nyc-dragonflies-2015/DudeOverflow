class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = commentable.comments.build(comment_params)
    @comment.save!
    if request.xhr?
      render :create, layout: false
    else
      redirect_to @comment.commentable
    end
  end

  private

  def commentable
    commentable_class.find(comment_params[:commentable_id])
  end

  def commentable_class
    comment_params[:commentable_type] == "Question" ? Question : Answer
  end

  def comment_params
    params.require(:comment).permit(:body, :user_id, :commentable_id, :commentable_type).merge(user_id: current_user.id)
  end
end
