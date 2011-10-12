class Poll < ActiveRecord::Base
  has_many :choices

  accepts_nested_attributes_for :choices
  attr_accessible :title, :choices_attributes
end
