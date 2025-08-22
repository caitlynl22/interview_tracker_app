# frozen_string_literal: true

class CreateInterviews < ActiveRecord::Migration[8.0]
  def change
    create_table :interviews do |t|
      t.string :job_title, null: false
      t.string :level
      t.boolean :completed, null: false, default: false
      t.references :user_profile, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
    add_index :interviews, [:user_id, :company_id], unique: true, name: 'index_interviews_on_user_and_company'
  end
end
