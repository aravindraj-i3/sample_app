module ApplicationHelper
  def full_title(page_title = '')
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}" # Recommended: Use string interpolation
      # OR: page_title + " | " + base_title # FIX: No spaces around '+'
    end
  end
end