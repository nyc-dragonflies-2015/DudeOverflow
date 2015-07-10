class AnswersController < ApplicationController

  def create
    question = Question.find(question_id: params[:question_id])
    @answer = Answer.new(answer_params)
    if @answer && @answer.save

    else
      flash[:alert] = "#{@answer.errors.full_messages.join("--")}"
    end
    redirect_to question
  end

  def show
    @question = Question.find(params[:question_id])
  end

  def edit
    @question = Question.find(params[:question_id])
    @answer = Answer.find(params[:id])
    verify_answer_ownership
  end

  def update
    @question = Question.find(params[:question_id])
    @answer = Answer.find(params[:id])
    verify_answer_ownership
    if @answer.update_attributes(answers_params)
      redirect_to question_path(@answer.question_id)
    else
      flash[:alert] = "#{@question.errors.full_messages.join("--")}"
      render :edit
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:body, :user_id, :question_id)
  end

  def verify_answer_ownership
    unless @answer.user_id == current_user.id
      flash[:notice] = "This answer does not belong to you."
      redirect_to root_path
    end
  end

end