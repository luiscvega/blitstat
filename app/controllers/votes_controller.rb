class VotesController < ApplicationController
  def create
    @vote = Choice.find_by_choice(params[:choice]).votes.create(params[:vote])
    redirect_to @vote.choice.poll
  end
end
