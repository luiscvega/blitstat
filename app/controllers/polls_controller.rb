class PollsController < ApplicationController
  before_filter :authenticate, :only => :new
  
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
    2.times do @poll.choices.build end
  end

  def show
    @poll = Poll.find(params[:id])
    @choices = @poll.choices
    @vote = Vote.new
  end
  
  def create
    @poll = Poll.new(params[:poll])
    if @poll.save
      redirect_to @poll, :notice => "Successfully created poll."
    else
      redirect_to new_poll_path, :notice => "Why are you trying to trick me?"
    end
  end

end
