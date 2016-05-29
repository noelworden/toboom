require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user){create(:user)}
  let(:fail_user1) {User.create!(email: "", password: "helloworld", password_confirmation: "helloworld")}
  let(:fail_user2) {User.create!(email: "example@example.com", password: "", password_confirmation: "")}

  it {is_expected.to have_many(:items)}
  
  describe "attributes" do
    it "should have email" do
      expect(user).to have_attributes(email: user.email)
    end

    it "should have password" do
      expect(user).to have_attributes(password: user.password)
    end
  end

  describe "confirm improper input" do
    it "should fail the user email" do
      user.email = nil
      expect(user).to_not be_valid
    end
  end

  describe "testing confirmation" do
    it "should pass accept the confirmation element" do
      user.password = nil
      expect(user).to_not be_valid
    end
  end
end