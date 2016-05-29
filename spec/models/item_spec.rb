require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:user){create(:user)}
  let(:item){user.items.create!(name: "the first item")}

  it {is_expected.to belong_to(:user)}

  describe "attributes" do
    it "has name attribute" do
      p user
      p item
      expect(item).to have_attributes(name: "the first item")
    end
  end

end
