FactoryGirl.define do
  factory :user do
    username { Faker::LordOfTheRings.character }
    password { "password" }
  end
end
