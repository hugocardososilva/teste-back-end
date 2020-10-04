require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.create(:user) }
  context "Validations" do
    it 'is avalid user create' do
      expect(user).to be_valid
    end
       it "has a unique email" do
      some_user = FactoryBot.build(:user, email: user.email)
      expect(some_user).to_not be_valid
    end

    it "is not valid without a password" do
      some_user = FactoryBot.build(:user, password: nil)
      expect(some_user).to_not be_valid
    end

    it "is not valid without an email" do
      some_user = FactoryBot.build(:user, email: nil)
      expect(some_user).to_not be_valid
    end

  end

end
