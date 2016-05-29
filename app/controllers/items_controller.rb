class ItemsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @item = current_user.items.create(item_params)

    if @item.save
      flash[:notice] = "Items was saved."
      redirect_to [@user]
    else
      flash[:alert] = "Try that again."
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
