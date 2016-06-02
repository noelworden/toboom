namespace :todo do
  desc "Delete item after 7 days"
  task delete_items: :environment do
    Item.where("created_at <= ?", Time.now - 6.days).destroy_all
  end

end
