class Poll < ActiveRecord::Base
  has_many :choices

  accepts_nested_attributes_for :choices
  attr_accessible :title, :choices_attributes
  
  def total_votes
    choices.collect{|c| c.total_votes}.sum
  end
end
