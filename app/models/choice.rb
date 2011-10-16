class Choice < ActiveRecord::Base
  belongs_to :poll
  
  has_many :votes
  
  validates_presence_of :choice
  
  def total_votes
    votes.count
  end
end
