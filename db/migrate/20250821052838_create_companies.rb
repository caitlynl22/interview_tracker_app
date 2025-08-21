# frozen_string_literal: true

class CreateCompanies < ActiveRecord::Migration[8.0]
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.string :address1
      t.string :address2
      t.string :city, null: false
      t.string :state, null: false
      t.string :country, null: false
      t.string :website, null: false
      t.string :industry

      t.timestamps
    end
  end
end
