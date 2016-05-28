require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:item){Item.create!(name: "the first item")}

  describe "attributes" do
    it "has name attribute" do
      expect(item).to have_attributes(name: "the first item")
    end
  end

end
