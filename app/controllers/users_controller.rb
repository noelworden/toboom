class UsersController < ApplicationController
  def show
    @user = current_user
    #@complete_items = Item.complete_items
    #@incomplete_items = Item.incomplete_items
  end
end
