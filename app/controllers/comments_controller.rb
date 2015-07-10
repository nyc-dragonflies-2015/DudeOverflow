class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = @commentable.comments.create(params[:comment])
    if @comment.valid?
      render text: "great"
    else
      flash[:alert] = "#{@comment.errors.full_messages.join("==")}"
    end
  end
end