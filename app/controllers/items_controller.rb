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

  def update
    @item = Item.find(params[:id])
    @item.complete = 1
    @item.save
    redirect_to user_path(:user_id)
  end

  def destroy
    @item = Item.find(params[:id])

    if @item.destroy
      flash[:notice] = "The item -#{@item.name}- has been completed!"
    else
      flash.now[:alert] = "There was an error marking this as complete, try again"
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

  def completed_items
    @completed_items = Item.where(complete: 1)
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
