require 'rails_helper'

RSpec.describe Tracker, type: :model do
  let(:tracker) { FactoryBot.create(:tracker) }
  context "Validation" do
    it 'is a valid create' do
      expect(tracker).to be_valid
    end
    it 'is not a valid with nil uuid' do
      some_tracker = FactoryBot.build(:tracker, uuid: nil)
      expect(some_tracker).to_not be_valid
    end
    it 'is not a valid with nil page' do
      some_tracker = FactoryBot.build(:tracker, page: nil)
      expect(some_tracker).to_not be_valid
    end
    it 'is not a valid with nil moment' do
      some_tracker = FactoryBot.build(:tracker, moment: nil)
      expect(some_tracker).to_not be_valid
    end
  end
end
