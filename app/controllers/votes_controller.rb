class VotesController < ApplicationController
  def create
    if current_user
      @vote = current_user.votes.new(params[:vote])
    else
      @vote = Vote.new(params[:vote])
    end
    if @vote.save
      redirect_to @vote.choice.poll, :notice => "Thanks for the vote!"
    else
      redirect_to :back, :notice => "You did not select a choice."
    end
  end
end
