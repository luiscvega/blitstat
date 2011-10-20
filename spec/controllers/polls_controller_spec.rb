require 'spec_helper'

describe PollsController do
  render_views
  
  describe "access control" do
    it "should deny access to 'new'" do
      post :new
      response.should redirect_to(login_path)
    end
  end
  
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

  # describe "GET 'new'" do
  #   it "should be successful" do
  #     test_sign_in(Factory(:user))
  #     get 'new'
  #     response.should be_success
  #   end
  # end
  
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
