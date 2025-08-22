# frozen_string_literal: true

# == Schema Information
#
# Table name: interview_steps
#
#  id           :bigint           not null, primary key
#  date         :date
#  description  :text
#  format       :string
#  position     :integer
#  technical    :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  interview_id :bigint           not null
#
# Indexes
#
#  index_interview_steps_on_interview_id  (interview_id)
#
# Foreign Keys
#
#  fk_rails_...  (interview_id => interviews.id)
#
require "rails_helper"

RSpec.describe InterviewStep, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
