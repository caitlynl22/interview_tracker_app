FactoryBot.define do
  factory :company do
    name { Faker::Company.name }
    address1 { Faker::Address.street_address }
    address2 { Faker::Address.secondary_address }
    city { Faker::Address.city }
    state { Faker::Address.state_abbr }
    country { "USA" }
    website { Faker::Internet.url }
    industry { Faker::Company.industry }
  end
end
