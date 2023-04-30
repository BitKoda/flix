# frozen_string_literal: true

# UsersController
class UsersController < ApplicationController
  before_action :require_signin, except: %i[new create]
  before_action :require_correct_user, only: %i[edit update]
  before_action :require_admin, only: [:destroy]
  before_action :find_user_by_username, only: %i[show edit update destroy]

  def index
    @users = User.not_admins
  end

  def show
    @reviews = @user.reviews
    @favourite_movies = @user.favourite_movies
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user, notice: 'Thanks for signing up!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'Account successfully updated!'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
    redirect_to movies_url, status: :see_other, alert: 'Account successfully deleted!'
  end

  private

  def find_user_by_username
    @user = User.find_by!(username: params[:id])
  end

  def require_admin
    @user = User.find(params[:id])
  end

  def require_correct_user
    @user = User.find_by(username: params[:id])
    redirect_to movies_url unless current_user?(@user)
  end

  def user_params
    params.require(:user).permit(:name, :username, :email, :password, :password_confirmation)
  end
end
