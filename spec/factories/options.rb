spec/factories/options.rb

FactoryBot.define do
  factory :option do
    name { Faker::StarWars.character }
    vote_count 0
    survey_id nil
  end
end
