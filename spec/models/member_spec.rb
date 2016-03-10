require 'rails_helper'

RSpec.describe Member, type: :model do
  describe "ActiveRecord associations" do
    let(:member) {build(:member)}

    it { expect(member).to have_many(:subscriptions) }
  end

  context "executes methods correctly" do
    let(:member) {build(:member)}

    context "#method subscribed?" do
      it "does what it's supposed to false" do
        expect(member.subscribed? nil).to eq(false)
      end
    end
  end
end
