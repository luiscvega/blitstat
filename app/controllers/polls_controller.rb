class PollsController < ApplicationController
  
  def main
  end
  
  def index
    @all_polls = Poll.all
  end
  
  def edit
    @poll = Poll.find(params[:id])
  end

  def new
    @poll = Poll.new
    2.times do @poll.choices.new end
  end

  def show
    @poll = Poll.find(params[:id])
    @votes = @poll.choices.map do |choice|
      choice.votes.new
    end
  end
  
  def create
    @poll = Poll.new(params[:poll])
    if @poll.save
      flash[:notice] = "Successfully created poll."
      redirect_to @poll
    else
      render :action => 'new'
    end
  end

end
