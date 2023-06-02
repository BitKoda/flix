# frozen_string_literal: true

# ApplicationHelper
module ApplicationHelper
  def main_image(movie)
    if movie.main_image.attached?
      image_tag(movie.main_image,
                class: 'card-img-top')
    else
      image_tag('placeholder.png', class: 'card-img-top')
    end
  end
end
