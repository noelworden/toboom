require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

  describe "POST #create" do
    it "increases the number of items by one" do
      expect {post :create, item:{name: "test item"}}.to change(Item,:count).by(1)
    end
  end

end
