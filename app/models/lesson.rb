class Lesson < ActiveRecord::Base
  belongs_to :teacher
  has_many :schedules, dependent: :destroy

  validates :teacher_id, presence: true
end
