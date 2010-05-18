# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def display_price price
    price.to_s + " EUR"
  end
end
