  class AnswersController < ApplicationController

  def create
    question = Question.find_by(id: answer_params[:question_id])
    @answer = Answer.new(answer_params)
    if @answer && @answer.save
      @answer.question_id = question.id
    else
      flash[:alert] = "#{@answer.errors.full_messages.join("--")}"
    end
    if request.xhr?
      render :create, layout: false
    else
      redirect_to question
    end
  end

  def show
    @question = Question.find(params[:question_id])
  end

  def edit
    @question = Question.find(params[:question_id])
    @answer = Answer.find(params[:id])
    verify_answer_ownership
  end

  private

  def answer_params
    params.require(:answer).permit(:body, :user_id, :question_id)
  end

end