require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
john_whats = Customer.new("John", "Whats")
ali_aziz = Customer.new("ali", "aziz")
food = Restaurant.new("food")
good = Review.new("good", john_whats, food, 5)
bad = Review.new("bad", john_whats, food, 1)
love_it = Review.new("love it", ali_aziz, food, 4)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
