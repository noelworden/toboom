class ItemsController < ApplicationController
  def create
    @user = current_user
    item = @user.item.new(item_params)

    if item.save
      flash[:notice] = "Item was saved"
      redirect_to [@user.show]
    else
      flash.now[:alert] = "There was an error"
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
