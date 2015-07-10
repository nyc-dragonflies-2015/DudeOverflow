class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.update_attributes(user_id: current_user.id)
    if @comment.commentable_type == "Question"
      @question = Question.find(@comment.commentable_id)
      @comment.commentable_id = @question.id
    elsif @comment.commentable_type == "Answer"
      @answer = Answer.find(@comment.commentable_id)
      @comment.commentable_id = @answer.id
    end
    @comment.save
    redirect_to @question
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :user_id, :commentable_id, :commentable_type)
  end
end