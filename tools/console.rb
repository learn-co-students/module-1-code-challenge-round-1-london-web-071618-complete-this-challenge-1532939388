require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


mei = Customer.new("Mei", "Xiao")
justin = Customer.new("Justin", "Xiao")
grace = Customer.new("Grace", "Lee")
justin2 = Customer.new("Justin", "Bieber")


veg_place = Restaurant.new("Veg Place")
meat_place = Restaurant.new("Meat Place")
whole_foods = Restaurant.new("Whole foods")
korean_deli = Restaurant.new("K Deli")
mayfair = Restaurant.new("Mayfair")



mei_review1 = Review.new(mei, veg_place, 4, "pretty good, I liked it")
mei_review2 = Review.new(mei, meat_place, 1, "yuck")
mei_review3 = Review.new(mei, whole_foods, 5, "amazing")
grace_review1 = Review.new(grace, veg_place, 3, "ok")
grace_review2 = Review.new(grace, meat_place, 4, "alright, but could be better")
justin_review1 = Review.new(justin, veg_place, 2, "expensive")
justin_review2 = Review.new(justin, meat_place, 5, "great")
justin_review2 = Review.new(justin, mayfair, 5, "amazing, I liked it a lot")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
