# frozen_string_literal: true

# Characterization model
class Characterization < ApplicationRecord
  belongs_to :movie
  belongs_to :genre
end
