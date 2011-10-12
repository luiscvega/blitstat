require 'spec_helper'

describe Choice do
  render_views
  
  describe "GET 'main'" do
    
    it "should have the right title" do
      get 'main'
      response.should have_selector("title", :content => "Choose")
    end
    
    it "should have the right title" do
      get 'main'
      response.should have_selector("title", :content => "Choose")
    end
    
  end
end
