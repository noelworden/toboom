5.times do
  User.create!(
    email: RandomData.random_email,
    password: RandomData.random_word
    )
end
users = User.all

default = User.create!(
  email: "example@toboom.com",
  password: "helloworld"
  )

puts "Seed finished"
puts "#{User.count} users created"