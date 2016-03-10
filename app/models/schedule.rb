class Schedule < ActiveRecord::Base
  belongs_to :lesson
  has_many :subscription

  before_create :create_daterange

  def create_daterange
    self.daterange = "#{self.starts_at} - #{self.ends_at}"
  end
end
