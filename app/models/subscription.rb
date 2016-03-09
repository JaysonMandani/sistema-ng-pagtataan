class Subscription < ActiveRecord::Base
  belongs_to :member
  belongs_to :schedule
end
