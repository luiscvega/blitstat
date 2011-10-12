class PollsController < ApplicationController
  
  def main
  end
  
  def index
  end

  def new
    @poll = Poll.new
    2.times do @poll.choices.build end
  end

  def show
  end
  
  def create
    @poll = Poll.new(params[:poll])
    if @poll.save
      flash[:notice] = "Successfully created poll."
      redirect_to polls_path
    else
      render :action => 'new'
    end
  end

end
