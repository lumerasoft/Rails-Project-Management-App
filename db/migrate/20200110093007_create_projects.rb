# frozen_string_literal: true

class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :projectid
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
