FactoryGirl.define do
  factory :user do
    username { Faker::LordOfTheRings.character }
    password { Faker::Book.genre }
  end
end
