class Schedule < ActiveRecord::Base
  belongs_to :lesson
  belongs_to :teacher
  has_many :subscriptions

  before_create :create_daterange

  def create_daterange
    self.daterange = "#{self.starts_at} - #{self.ends_at}"
  end

  # def self.search(search)
  #   joins(:teacher).merge(Teacher.where("name like ?", "%#{search}%"))
  # end
end
