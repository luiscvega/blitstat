require 'spec_helper'

describe Choice do
  before(:each) do
    @attr = {:choice => "Mac"}
  end
  
  it "should create a new instance with valid attributes" do
    Choice.create(@attr)
  end
end
