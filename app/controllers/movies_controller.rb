# frozen_string_literal: true

# MoviesController
class MoviesController < ApplicationController
  before_action :require_signin, except: %i[index show]
  before_action :require_admin, except: %i[index show new create]
  before_action :find_movie_by_slug, only: %i[show edit update destroy]

  def index
    @movies = Movie.send(movies_filter)
  end

  def show
    @reviews = @movie.reviews ||= nil
    @reviewers = @movie.reviewers
    @review = @movie.reviews.new
    @fans = @movie.fans
    @favourite = current_user.favourites.find_by(movie_id: @movie) if current_user
    @genres = @movie.genres.order(:name)
    @user_reviewed = current_user.reviewed_movies.include?(@movie) if current_user
  end

  def edit; end

  def update
    if @movie.update(movie_params)
      redirect_to @movie, notice: 'Movie successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to @movie, notice: 'Movie successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @movie.destroy
    redirect_to movies_url, status: :see_other, alert: 'Movie successfully deleted.'
  end

  private

  def find_movie_by_slug
    @movie = Movie.find_by!(slug: params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title,
                                  :description,
                                  :rating,
                                  :released_on,
                                  :total_gross,
                                  :director,
                                  :duration,
                                  :main_image,
                                  genre_ids: [])
  end

  def movies_filter
    if params[:filter].in? %w[upcoming recent hits flops]
      params[:filter]
    else
      :released
    end
  end
end
