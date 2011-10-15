class Vote < ActiveRecord::Base
  validates_presence_of :choice
  belongs_to :choice
end
