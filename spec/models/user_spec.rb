require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user){create(:user)}

  describe "attributes" do
    it "should have email" do
      expect(user).to have_attributes(email: user.email)
    end

    it "should have password" do
      expect(user).to have_attributes(password: user.password)
    end
  end
end
