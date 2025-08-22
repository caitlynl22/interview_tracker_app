# frozen_string_literal: true

# == Schema Information
#
# Table name: interviews
#
#  id              :bigint           not null, primary key
#  job_title       :string           not null
#  level           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  company_id      :bigint           not null
#  user_profile_id :bigint           not null
#
# Indexes
#
#  index_interviews_on_company_id       (company_id)
#  index_interviews_on_user_profile_id  (user_profile_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#  fk_rails_...  (user_profile_id => user_profiles.id)
#
require "rails_helper"

RSpec.describe Interview, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
