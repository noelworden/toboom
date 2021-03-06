class ItemsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @item = current_user.items.create(item_params)
    @item.expires_at = Time.now + 7.days

    if @item.save
      flash[:notice] = "Item was saved."
      redirect_to [@user]
    else
      flash[:alert] = "Try that again."
    end
  end

  def update
    @item = Item.find(params[:id])
    @item.complete = !@item.complete
    @item.save!
    redirect_to current_user
  end

  def destroy
    @item = Item.find(params[:id])
    @user = User.find(params[:user_id])

    @item.destroy

    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
end
