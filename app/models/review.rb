class Review < ApplicationRecord
  STARS = [1,2,3,4,5]

  belongs_to :movie
  belongs_to :user
  
  validates :stars, inclusion: {
      in: STARS,
      message: "must be between 1 and 5"
  }
  validates :comment, length: { minimum: 4 }

  scope :past_n_days, ->(n=2) { where("created_at < ?", Time.now).order(created_at: :asc) }

  def stars_as_percent
    (stars / 5.0) * 100.0
  end
end
