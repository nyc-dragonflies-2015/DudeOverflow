class VotesController < ApplicationController

  def new
    @vote = Vote.new
  end

  def create
    @vote = current_user.votes.create(params[:vote])
  end
end