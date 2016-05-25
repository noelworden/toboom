FactoryGirl.define do
  pw = RandomData.random_sentence

  factory :user do
    name RandomData.random_name
    password pw
    password_confirmation pw
  end
end
