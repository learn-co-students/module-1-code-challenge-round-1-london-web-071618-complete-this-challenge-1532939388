require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

casey = Customer.new("Casey", "vanRoose")
mike = Customer.new("Mike", "Rumbles")
michael = Customer.new("Mike", "Lee")

gbk = Restaurant.new("GBK")
pizza_express = Restaurant.new("Pizza Express")

good = Review.new(casey, gbk, 4, "Good")
bad = Review.new(casey, pizza_express, 2, "Bad!")
avarage = Review.new(mike, gbk, 2, "Average!")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
