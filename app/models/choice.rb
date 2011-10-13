class Choice < ActiveRecord::Base
  belongs_to :poll
  
  has_many :votes
end
