class Item < ActiveRecord::Base
  before_save {self.complete ||= :false}

  belongs_to :user

  default_scope { order('created_at ASC')}

  scope :incomplete_items, -> {Item.where(complete: false)}
  scope :complete_items, -> {Item.where(complete: true)}


  def expires_at
    (created_at + 7.days)
  end

  # def completed_items
  #   @completed_items = Item.where(complete: 1)
  # end

end
