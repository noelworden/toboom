class ItemsController < ApplicationController
  def create
    @item = Item.new
    @item.user = current_user

    if @item.save
      flash[:notice] = "Item was saved"
      redirect_to [@user.show]
    else
      flash.now[:alert] = "There was an error"
    end
  end
end
