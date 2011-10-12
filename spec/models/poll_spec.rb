require 'spec_helper'

describe Poll do
  before(:each) do
    @attr = {:title => "Mac or PC?"}
  end
  
  it "should create a new instance with valid attributes" do
    Poll.create(@attr)
  end
end
