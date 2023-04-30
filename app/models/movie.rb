# frozen_string_literal: true

# Movie model logic
class Movie < ApplicationRecord
  # callbacks
  before_save :set_slug

  # relationships
  has_many :reviews, dependent: :destroy
  has_many :reviewers, through: :reviews, source: :user
  has_many :favourites, dependent: :destroy
  has_many :fans, through: :favourites, source: :user
  has_many :characterizations, dependent: :destroy
  has_many :genres, through: :characterizations

  has_one_attached :main_image

  RATINGS = %w[G PG PG-13 R NC-17].freeze

  # built-in validations
  validates :title, presence: true, uniqueness: true
  validates :duration, :released_on, presence: true
  validates :description, length: { minimum: 25 }
  validates :total_gross, numericality: { greater_than_or_equal_to: 0 }
  validates :duration, numericality: { greater_than_or_equal_to: 0 }
  validates :rating, inclusion: { in: RATINGS }

  # custom validations
  validate :acceptable_image

  # def self.recently_added
  #  order("created_at desc").limit(3)
  # end

  # scopes
  scope :released, -> { where('released_on < ?', Time.zone.now).order(released_on: :desc) }
  scope :upcoming, -> { where('released_on > ?', Time.zone.now).order(created_at: :desc) }
  scope :recent, ->(max = 5) { released.limit(max) }
  scope :hits, -> { released.where('total_gross >= 1300000000').order(total_gross: :desc) }
  scope :flops, -> { released.where('total_gross < 100000000').order(total_gross: :asc) }

  def flop?
    if total_gross.blank? || total_gross < 225_000_000
      true
    elsif (total_gross < 225_000_000) && (reviews.count > 50) && (reviews.average(:stars) >= 4)
      false
    else
      false
    end
  end

  def average_stars
    reviews.average(:stars) || 0.0
  end

  def average_stars_as_percent
    (average_stars / 5.0) * 100
  end

  def number_reviews
    reviews.count
  end

  def to_param
    slug
  end

  private

  def acceptable_image
    return unless main_image.attached?

    errors.add(:main_image, 'is too big') unless main_image.blob.byte_size <= 512.kilobytes

    acceptable_types = ['image/jpeg', 'image/png']
    return if acceptable_types.include?(main_image.blob.content_type)

    errors.add(:main_image, 'must be a JPEG or PNG')
  end

  def set_slug
    self.slug = title.parameterize
  end
end
