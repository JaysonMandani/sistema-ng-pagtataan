require 'rails_helper'

RSpec.describe Schedule, type: :model do
  describe "ActiveRecord associations" do
    let(:schedule) {build(:schedule, teacher: build(:teacher, name: "test"))}

    it { expect(schedule).to belong_to(:teacher) }
    it { expect(schedule).to belong_to(:lesson) }
    it { expect(schedule).to have_many(:subscriptions).dependent(:destroy) }
  end

  context "callbacks" do
    let(:schedule) {build(:schedule)}

    it { expect(schedule).to callback(:create_daterange).before(:create) }
  end
end
