module ApplicationHelper

  def welcome_text
    "Con mas de #{Singer.count} cantantes y más de #{Album.count} albums!!"
  end
end
