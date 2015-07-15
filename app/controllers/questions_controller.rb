class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
    @question.view_count += 1
    @question.save
    @comment = Comment.new
    @answer = Answer.new
    # @answers = Answer.where(question_id: @question.id)
  end

  def new
    unless current_user
      flash[:notice] = "You must be logged in to ask a question."
      redirect_to root_url
    end
    @question = Question.new
  end

  def create
    @question = current_user.questions.create(question_params)
    if @question.valid?
      redirect_to root_url
    else
      render :new
    end
  end

  private

  def question_params
    params.require(:question).permit(:title, :body)
  end
end
