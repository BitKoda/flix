# frozen_string_literal: true

# Add username column to Users table and index it
class AddUsernameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string
    add_index :users, :username, unique: true
  end
end
