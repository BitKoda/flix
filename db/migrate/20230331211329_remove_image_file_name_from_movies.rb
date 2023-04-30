# frozen_string_literal: true

# Remove the image_file_name columm from Movies table
class RemoveImageFileNameFromMovies < ActiveRecord::Migration[7.0]
  def change
    remove_column :movies, :image_file_name, :string
  end
end
