require 'spec_helper'

describe PollsController do
  render_views
  
  describe "GET 'main'" do
    it "should be successful" do
      get 'main'
      response.should be_success
    end
  end
  
  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end
  
  describe "GET 'show'" do
    
    before(:each) do
      @poll = FactoryGirl.create(:poll)
    end
    
    it "should be successful" do
      get 'show', :id => @poll
      response.should be_success
    end  
  end
  
end
