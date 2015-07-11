class VotesController < ApplicationController

  def new
    @vote = Vote.new
  end

  def upvote
    existing_vote = vote_for_curr_user
    if existing_vote && !existing_vote.upvote
      existing_vote.destroy
    elsif existing_vote && existing_vote.upvote
    else
      Vote.create(vote_params)
    end
    redirect_to :back
  end

  def downvote
    existing_vote = vote_for_curr_user
    if existing_vote && existing_vote.upvote
      existing_vote.destroy
    elsif existing_vote && !existing_vote.upvote
    else
      Vote.create(vote_params)
    end
    redirect_to :back
  end

  def vote_for_curr_user
    Vote.find_by(user_id: vote_params[:user_id], voteable_type: vote_params[:voteable_type], voteable_id: vote_params[:voteable_id])
  end

  def vote_params
    params.require(:vote).permit(:upvote, :user_id, :voteable_type, :voteable_id)
  end
end