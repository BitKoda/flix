# frozen_string_literal: true

# Add a Slug column to Movies table
class AddSlugToMovies < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :slug, :string
  end
end
