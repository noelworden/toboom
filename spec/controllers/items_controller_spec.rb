require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
let(:my_user){create(:user)}
let(:my_item){Item.create!(user_id: my_user.id, name: "Another test post")}

  context "signed-in example_user doing CD on a comment they own" do
    before do
      sign_in my_user
    end

    describe "POST create" do
      it "increase the number of items by 1" do
        expect {post :create, user_id: my_user.id, item: {name:"This is a test"} }.to change(Item, :count).by(1)
      end
    end

    describe "delete DESTROY" do
      it "deletes the item" do
        delete :destroy, format: :js, user_id: my_user.id, id: my_item.id
        count = Item.where({id: my_item.id}).size
        expect(count).to eq 0
      end
    end
  end
end