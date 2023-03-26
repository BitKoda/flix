class ReviewsController < ApplicationController
  before_action :require_signin
  before_action :get_movie
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  def index
    @reviews = @movie.reviews
  end

  def new
    @review = @movie.reviews.new
  end

  def create
    @review = @movie.reviews.new(review_params)
    @review.user = current_user
    if @review.save
      redirect_to movie_reviews_path(@movie), notice: "Thanks for your review!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @review.update(review_params)
      redirect_to movie_review_path(@movie), notice: "Review successfully updated!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @review.destroy
    redirect_to movie_reviews_url,
    alert: "Review successfully deleted."
  end

  private

  def review_params
    params.require(:review).permit(:stars, :comment)
  end

  def get_movie
    @movie = Movie.find(params[:movie_id])
  end

  def set_review
    @review = @movie.reviews.find_by!(slug: params[:id])
  end

end
