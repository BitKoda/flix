# frozen_string_literal: true

# FavouritesHelper
module FavouritesHelper
  def fave_unfave_button(movie, favourite)
    if favourite
      button_to '♡ Unfave', movie_favourite_path(movie, favourite), method: :delete
    else
      button_to '♥️  Fave', movie_favourites_path(movie)
    end
  end
end
