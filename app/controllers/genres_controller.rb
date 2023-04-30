# frozen_string_literal: true

# GenresController
class GenresController < ApplicationController
  before_action :require_admin, except: %i[index show]
  before_action :find_genre_by_slug, only: %i[show destroy]

  def index
    @genres = Genre.order(:name)
  end

  def show
    @movies = @genre.movies
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      redirect_to genres_url,
                  notice: 'Genre was successfully created!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @genre.destroy
    redirect_to genres_url
  end

  private

  def find_genre_by_slug
    @genre = Genre.find_by!(slug: params[:id])
  end

  def genre_params
    params.require(:genre).permit(:name)
  end
end
