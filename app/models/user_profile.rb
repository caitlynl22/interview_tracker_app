# frozen_string_literal: true

# == Schema Information
#
# Table name: user_profiles
#
#  id                :bigint           not null, primary key
#  birthdate         :date
#  city              :string
#  country           :string
#  disability_status :boolean          default(FALSE), not null
#  first_name        :string
#  gender            :string
#  industry          :string
#  last_name         :string
#  race_or_ethnicity :string
#  state             :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  user_id           :bigint           not null
#
# Indexes
#
#  index_user_profiles_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class UserProfile < ApplicationRecord
  belongs_to :user
end
