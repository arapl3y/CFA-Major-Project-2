require 'faker'

FactoryGirl.define do
  factory :item do |f|
    f.title { Faker::File.file_name }
    f.description { Faker::Hacker.say_something_smart }
  end

  factory :invalid_item, parent: :item do |f|
    f.title nil
  end
end
