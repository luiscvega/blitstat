class Vote < ActiveRecord::Base
  validates_presence_of :choice
  belongs_to :choice
  belongs_to :user
end