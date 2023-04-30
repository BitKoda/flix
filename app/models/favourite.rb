# frozen_string_literal: true

# Favourite model
class Favourite < ApplicationRecord
  belongs_to :movie
  belongs_to :user
end
