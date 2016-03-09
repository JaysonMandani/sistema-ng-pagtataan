class Lesson < ActiveRecord::Base
  belongs_to :teacher

  validates :teacher_id, presence: true
end
