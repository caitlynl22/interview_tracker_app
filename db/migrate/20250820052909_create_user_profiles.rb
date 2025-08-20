# frozen_string_literal: true

class CreateUserProfiles < ActiveRecord::Migration[8.0]
  def change
    create_table :user_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :country
      t.string :state
      t.string :city
      t.string :industry
      t.string :gender
      t.date :birthdate
      t.string :race_or_ethnicity
      t.boolean :disability_status, null: false, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
