require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
let(:my_user){create(:user)}

  describe "POST #create" do
    it "increases the number of items by one" do
      expect {post :create, user_id: my_user.id, item:{name: "test item"}}.to change(Item,:count).by(1)
    end
  end

end
