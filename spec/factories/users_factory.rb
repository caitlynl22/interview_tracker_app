# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  email_address   :string           not null
#  password_digest :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_email_address  (email_address) UNIQUE
#
FactoryBot.define do
 factory :user do
  email_address { Faker::Internet.unique.email }
  password { 'password123' }
  password_confirmation { 'password123' }

  after(:create) do |user|
    create(:user_profile, user: user)
  end

  trait :with_sessions do
    transient do
      sessions_count { 3 }
    end

    after(:create) do |user, evaluator|
      create_list(:session, evaluator.sessions_count, user: user)
    end
  end
 end
end
