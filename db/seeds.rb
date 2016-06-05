5.times do
  User.create!(
    email: Faker::Internet.email,
    password: RandomData.random_word,
    )
end
users = User.all

default1 = User.create!(
  email: "x@toboom.com",
  password: "helloworld"
  )

defaul2 = User.create!(
  email: "x@gmail.com",
  password: "helloworld"
  )

80.times do
  Item.create!(
    name: Faker::Hipster.sentence(4),
    user_id: rand(1..7)
    )
end
items = Item.all

##### Used for an individual seed #######
# 30.times do
#   Item.create!(
#     name: Faker::Hipster.sentence(4),
#     user_id: 6,
#     #created_at: Time.now
#     )
# end
# items = Item.all

# puts "Seed finished"
# puts "#{User.count} users created"
# puts "#{Item.count} itmes created"