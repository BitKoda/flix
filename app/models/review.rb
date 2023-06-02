# frozen_string_literal: true

# Review model logic
class Review < ApplicationRecord
  STARS = [1, 2, 3, 4, 5].freeze

  belongs_to :movie
  belongs_to :user

  validates :stars, inclusion: {
    in: STARS,
    message: 'must be between 1 and 5'
  }
  validates :comment, length: { minimum: 120 }
  validates :headline, length: { minimum: 10 }

  scope :past_n_days, ->(_n = 2) { where('created_at < ?', Time.zone.now).order(created_at: :asc) }

  def stars_as_percent
    (stars / 5.0) * 100.0
  end
end
