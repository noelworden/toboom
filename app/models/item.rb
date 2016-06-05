class Item < ActiveRecord::Base
  # require 'action_view'
  # include ActionView::Helpers::DateHelper
  before_save {self.complete ||= :no}

  belongs_to :user

  default_scope { order('created_at ASC')}

  enum complete: [:no, :yes]

  def expires_at
    (created_at + 7.days)
  end

end
