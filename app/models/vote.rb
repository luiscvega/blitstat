class Vote < ActiveRecord::Base
  validates_presence_of :choice, :user_id
  belongs_to :choice
  belongs_to :user
end