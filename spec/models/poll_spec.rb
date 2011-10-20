require 'spec_helper'

describe Poll do
  before(:each) do
    @attr = {:title => "Mac or PC?"}
    @user = Factory(:user)
  end

  describe "user associations" do
    
    before(:each) do
      @poll = @user.polls.create(@attr)
    end
    
    it "should create a new instance with valid attributes" do
      poll = Poll.create(@attr)
    end
    
    it "should have the right associated user" do
      @poll.user_id.should == @user.id
      @poll.user.should == @user
    end
    
  end
  

  
  
end
