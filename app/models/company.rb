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
class Company < ApplicationRecord
end
