# frozen_string_literal: true

# Migration to create the initial Movies table in database
class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :rating
      t.decimal :total_gross
      t.index :title, unique: true

      t.timestamps
    end
  end
end
