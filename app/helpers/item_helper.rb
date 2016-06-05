module ItemHelper
  def incomplete_item
    Item.where(complete: false)
  end
end