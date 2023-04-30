# frozen_string_literal: true

# Add Slug column to Genres table
class AddSlugToGenres < ActiveRecord::Migration[7.0]
  def change
    add_column :genres, :slug, :string
  end
end
