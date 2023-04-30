# frozen_string_literal: true

# Migration to add drector, duration and image_file_name columns in Movies table
class AddMoreFieldsToMovies < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :director, :string
    add_column :movies, :duration, :integer
    add_column :movies, :image_file_name, :string, default: 'placeholder.png'
  end
end
