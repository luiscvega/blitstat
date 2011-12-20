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
    
    #GENERATE DATA FOR CHART
    @votes = @choices.map do |choice|
      choice.votes.count
    end
    
    #GENERATE LABELs FOR CHARTS
    @labels = @choices.map do |choice|
      choice.title
    end

    
    
    
    # GENERATED CHART FROM GOOGLE CHARTS API
    @chart = Gchart.pie_3d(:labels => @labels, 
                           :data => @votes, 
                           :size => '750x200')
    
  end


  def create
    @poll = current_user.polls.new(params[:poll])
    if @poll.save
      redirect_to @poll, :notice => "Successfully created poll."
    else
      redirect_to new_poll_path, :notice => "Please complete poll form."
    end
  end
  
  def user_polls
    @polls = Poll.where("user_id = ?", current_user.id)
  end

end
