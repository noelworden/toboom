class Item < ActiveRecord::Base
  # before_save {self.complete ||= false}

  belongs_to :user

  default_scope { order('created_at ASC')}

  scope :incomplete_items, -> {Item.where(complete: false)}
  scope :complete_items, -> {Item.where(complete: true)}

end
