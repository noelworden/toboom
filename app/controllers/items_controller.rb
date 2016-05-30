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

  def destroy
    @item = Item.find(params[:id])

    if @item.destroy
      flash[:notice] = "The item -#{@item.name}- has been completed!"
      redirect_to user_path(:user_id)
    else
      flash.now[:alert] = "There was an error marking this as complete, try again"
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
