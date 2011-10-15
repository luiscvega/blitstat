class Choice < ActiveRecord::Base
  belongs_to :poll
  
  has_many :votes
  
  accepts_nested_attributes_for :votes
  
  def total_votes
    votes.count
  end
end
