# frozen_string_literal: true

class CreateInterviewSteps < ActiveRecord::Migration[8.0]
  def change
    create_table :interview_steps do |t|
      t.boolean :technical, null: false, default: false
      t.integer :position, null: false
      t.text :description
      t.string :format, null: false
      t.date :date, null: false
      t.references :interview, null: false, foreign_key: true

      t.timestamps
    end
  end
end
