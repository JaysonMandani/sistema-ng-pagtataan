class Schedule < ActiveRecord::Base
  belongs_to :lesson
  has_many :subscription
end
