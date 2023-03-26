class User < ApplicationRecord
  before_save :format_email
  before_save :format_username

  has_many :reviews, dependent: :destroy
  has_many :reviewed_movies, through: :reviews, source: :movie
  has_many :favourites, dependent: :destroy
  has_many :favourite_movies, through: :favourites, source: :movie

  has_secure_password

  validates :name, presence: true

  validates :email, 
    format: { with: /\S+@\S+/ },
    uniqueness: { case_sensitive: false }

  validates :password, length: { minimum: 8, maximum: 16, allow_blank: true }

  validates :username,
    presence: true,
    format: { with: /[a-z0-9]+/ },
    uniqueness: { case_sensitive: false }

  scope :by_name, -> { order(:name) }
  scope :not_admins, -> { by_name.where(admin: false) }

  def gravatar_id
    Digest::MD5.hexdigest(email)
  end

  def to_param
    username
  end

  private

  def format_email
    self.email.downcase
  end

  def format_username
    self.username.downcase.parameterize 
  end

end
