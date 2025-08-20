# frozen_string_literal: true

FactoryBot.define do
  factory :user_profile do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    country { "USA" }
    state { Faker::Address.state_abbr }
    city { Faker::Address.city }
    industry { Faker::Job.field }
    gender { Faker::Gender.type }
    birthdate { Faker::Date.between(from: '1953-09-23', to: '2007-09-25') }
    race_or_ethnicity { Faker::Demographic.race }
    disability_status { false }
    user
  end
end
