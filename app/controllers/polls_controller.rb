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
    @user = @poll.user
    @choices = @poll.choices
    @vote = Vote.new
    @data = @choices.map do |choice|
      choice.votes.count
    end
    @labels = @choices.map do |choice|
      choice.choice
    end
    
    @chart = Gchart.pie_3d(:title => @poll.title, 
                           :labels => @labels, 
                           :data => @data, 
                           :size => '400x200')
  end
  
  def create
    @poll = current_user.polls.new(params[:poll])
    if @poll.save
      redirect_to @poll, :notice => "Successfully created poll."
    else
      redirect_to new_poll_path, :notice => "Why are you trying to trick me?"
    end
  end
  
  def user_polls
    @polls = Poll.where("user_id = ?", current_user.id)
  end

end
