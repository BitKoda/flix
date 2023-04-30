# frozen_string_literal: true

# Create the Users table in database
class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email, unique: true
      t.string :password_digest
      t.index :name, unique: true
      t.index :email, unique: true

      t.timestamps
    end
  end
end
