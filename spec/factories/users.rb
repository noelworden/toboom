FactoryGirl.define do
  factory :user do
    email {Faker::Internet.email}
    password "helloworld"
    password_confirmation "password"
  end
end
