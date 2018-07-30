require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


ali = Customer.new("ali", "aziz")
sarah = Customer.new("sarah", "jacob")
maduri_vassaramo = Customer.new("maduri", "vassaramo")
maduri = Customer.new("maduri", "vass")


restaurant1 = Restaurant.new("restaurant1")
restaurant2 = Restaurant.new("restaurant2")
restaurant3 = Restaurant.new("restaurant3")
restaurant4 = Restaurant.new("restaurant4")


review1 = Review.new("review1", sarah, restaurant1, 5, "content")
review2 = Review.new("review1", ali, restaurant1,2, "content")
review3 = Review.new("review1", ali, restaurant3, 5, "content")
review4 = Review.new("review1", maduri, restaurant4, 4, "content")





binding.pry
0 #leave this here to ensure binding.pry isn't the last line
