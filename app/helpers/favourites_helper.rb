# frozen_string_literal: true

# FavouritesHelper
module FavouritesHelper
  def fave_unfave_button(movie, favourite)
    if favourite
      button_to icon('fa-solid fa-heart fa-xl', class: 'fa-xl'), movie_favourite_path(movie, favourite),
                class: 'user-action-btn',
                title: "Remove #{@movie.title} from favourites",
                alt: "Link to favourite #{@movie.title}",
                method: :delete
    else
      button_to icon('fa-regular fa-heart fa-xl', class: 'fa-xl'), movie_favourites_path(movie),
                class: 'user-action-btn',
                title: "Add #{@movie.title} to favourites",
                alt: "Link to favourite #{@movie.title}"
    end
  end
end
