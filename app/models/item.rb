class Item < ActiveRecord::Base
  require 'action_view'
  include ActionView::Helpers::DateHelper

  belongs_to :user

  default_scope { order('created_at ASC')}

  def expires_at
    (created_at + 7.days)
  end

end
