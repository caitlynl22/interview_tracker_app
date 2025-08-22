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
class InterviewStep < ApplicationRecord
  belongs_to :interview

  validates :technical, inclusion: { in: [true, false] }
  validates :position, presence: true, numericality: { only_integer: true }
  validates :format, presence: true
  validates :date, presence: true
end
