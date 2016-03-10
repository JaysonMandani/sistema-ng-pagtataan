require 'rails_helper'

RSpec.describe Teacher, type: :model do
  describe "ActiveRecord associations" do
    let(:teacher) {build(:teacher)}

    it { expect(teacher).to have_many(:lessons) }
    it { expect(teacher).to have_many(:schedules) }
  end
end
