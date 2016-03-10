require 'rails_helper'

RSpec.describe Lesson, type: :model do
  describe "ActiveRecord associations" do
    let(:lesson) {build(:lesson)}

    it { expect(lesson).to validate_presence_of(:teacher_id) }
    it { expect(lesson).to belong_to(:teacher) }
    it { expect(lesson).to have_many(:schedules).dependent(:destroy) }
  end
end
