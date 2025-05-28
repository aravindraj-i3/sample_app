module UsersHelper
  def gravatar_for(user) # FIX: Removed space after def and before (user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase) # FIX: Removed spaces around ::
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}" # FIX: Removed spaces around #{}
    image_tag(gravatar_url, alt: user.name, class: "gravatar") # FIX: Removed spaces before : and around ( )
  end
end