require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
let(:my_user){create(:user)}

  context "signed-in example_user doing CD on a comment they own" do
    before do
      sign_in my_user
    end

    describe "POST create" do
      it "increase the number of items by 1" do
        expect {post :create, user_id: my_user.id, item: {name:"This is a test"} }.to change(Item, :count).by(1)
      end
    end
  end
end