# frozen_string_literal: true

Rails.application.routes.draw do
  root 'movies#index'

  resources :genres, except: %i[edit update]

  get 'movies/filter/:filter' => 'movies#index', as: :filtered_movies

  resources :movies do
    resources :reviews
    resources :favourites, only: %i[create destroy]
  end

  resource :session, only: %i[new create destroy]
  get 'signin' => 'sessions#new'

  resources :users
  get 'signup' => 'users#new'
end
