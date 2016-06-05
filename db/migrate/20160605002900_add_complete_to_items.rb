class AddCompleteToItems < ActiveRecord::Migration
  def change
    add_column :items, :complete, :integer
  end
end
