class Genre < ApplicationRecord

  before_save :set_params

  validates :name, presence: true, uniqueness: true

  has_many :characterizations, dependent: :destroy
  has_many :movies, through: :characterizations

  def to_param
    slug
  end

  private

  def set_params
    self.slug = name.parameterize
  end
end
