class VotesController < ApplicationController
  def create
    @vote = Vote.new(params[:vote])
    if @vote.save
      redirect_to @vote.choice.poll, :notice => "Thanks for the vote!"
    else
      redirect_to :back, :notice => "Why are you trying to trick me?"
    end
  end
  
  #find by id
end
