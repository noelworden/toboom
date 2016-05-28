class ItemsController < ApplicationController
  def create
    @item = Item.new
    @item.user = current_user
  end
end
