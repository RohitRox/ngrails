FactoryGirl.define do
  factory :post do
    title Faker::Lorem.sentence.capitalize
    content Faker::Lorem.paragraph
  end
end