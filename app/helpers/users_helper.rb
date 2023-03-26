module UsersHelper
  def profile_image(user, size=75)
    url = "http://secure.gravatar.com/avatar/#{user.gravatar_id}?s=#{size}"
    image_tag(url, alt: user.name)
  end

end
