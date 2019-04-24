# spec/factories/surveys.rb

FactoryBot.define do
  factory :survey do
    title { Faker::Lorem.word }
    description { Faker::Lorem.sentence }
    question { Faker::Lorem.sentence }
    created_by { Faker::Number.number(10) }
  end
end
