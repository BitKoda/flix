# frozen_string_literal: true

# MoviesHelper
module MoviesHelper
  def main_image(movie)
    if movie.main_image.attached?
      image_tag(movie.main_image,
                class: 'card-img-top')
    else
      image_tag('placeholder.png', class: 'card-img-top')
    end
  end

  def total_gross(movie)
    if movie.flop?
      'Flop!'
    else
      number_to_currency(movie.total_gross, precision: 0)
    end
  end

  def year_of(movie)
    movie.released_on&.year
  end

  def any_reviews?(movie)
    if movie.reviews.count.positive?
      link_to(pluralize(movie.reviews.count, 'review'), movie_reviews_path(movie))
    else
      content_tag(:span, (link_to 'No reviews yet', new_movie_review_path(movie)), class: 'stars')
    end
  end

  def nav_link_to(name, url)
    current_page?(url) ? link_to(name, url, class: 'active') : link_to(name, url)
  end
end
