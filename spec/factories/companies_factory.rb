# frozen_string_literal: true

# == Schema Information
#
# Table name: companies
#
#  id         :bigint           not null, primary key
#  address1   :string
#  address2   :string
#  city       :string           not null
#  country    :string           not null
#  industry   :string
#  name       :string           not null
#  state      :string           not null
#  website    :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
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
