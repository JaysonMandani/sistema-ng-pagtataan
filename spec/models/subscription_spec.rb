require 'rails_helper'

RSpec.describe Subscription, type: :model do
  describe "ActiveRecord associations" do
    let(:subscription) {build(:subscription)}

    it { expect(subscription).to belong_to(:member) }
    it { expect(subscription).to belong_to(:schedule) }
  end
end
