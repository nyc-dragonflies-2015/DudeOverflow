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