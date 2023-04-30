# frozen_string_literal: true

# Create a Genres table in database
class CreateGenres < ActiveRecord::Migration[7.0]
  def change
    create_table :genres do |t|
      t.string :name
      t.index :name, unique: true

      t.timestamps
    end
  end
end
