class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
    @comment = Comment.new
    @answer = Answer.new
    # @answers = Answer.where(question_id: @question.id)
  end

  def new
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

  def delete
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to root_url
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    if @question.update_attributes(question_params)
      redirect_to @question
    else
      render :edit
    end
  end

  private

  def question_params
    params.require(:question).permit(:title, :body)
  end
end