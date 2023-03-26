module MoviesHelper
  def total_gross(movie)
    if movie.flop?
      "Flop!"
    else
      number_to_currency(movie.total_gross, precision: 0) 
    end
  end

  def year_of(movie)
    movie.released_on.nil? ? nil : movie.released_on.year 
  end

  def any_reviews?(movie)
    if movie.reviews.count > 0 
      link_to(pluralize(movie.reviews.count, "review"), movie_reviews_path(movie))
    else
      content_tag(:span, (link_to "No reviews yet", new_movie_review_path(movie)), class: "stars")
    end
  end

  def nav_link_to(name, url)
    current_page?(url) ? link_to(name, url, class: 'active') : link_to(name, url)
  end

  #def average_stars(movie)
    #if movie.average_stars.zero?
    #  0.0
    #else
   #   content_tag(:span, "#{movie.average_stars.truncate(1)} out of 5 stars")
    #end
  #end

end
