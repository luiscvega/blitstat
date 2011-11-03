class Poll < ActiveRecord::Base
  has_many :choices
  belongs_to :user

  accepts_nested_attributes_for :choices
  
  attr_accessible :title, :choices_attributes
  
  validates_presence_of :title, :user_id
  
  def total_votes
    choices.collect{|c| c.total_votes}.sum
  end
end
