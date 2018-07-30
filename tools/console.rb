require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#customers

nina= Customer.new("Nina", "Gori")
sam= Customer.new("Sam","Smith")
dorian= Customer.new("Dorian", "Grey")

#restaurants
silver = Restaurant.new("Silver")
downing = Restaurant.new("Downing")
wild_card = Restaurant.new("Wild Card")


#Reviews
nina_silver = Review.new(nina, silver, 5)
dorian_wild= Review.new(dorian, wild_card, 4)
sam_downing = Review.new(sam, downing, 2)






binding.pry
0 #leave this here to ensure binding.pry isn't the last line
