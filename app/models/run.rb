require 'pry'

require_relative './customer.rb'
require_relative './restaurant.rb'
require_relative './review.rb'

jiggy = Customer.new("Will", "Smith")
toxic = Customer.new("Britney", "Spears")
simpson = Customer.new("Homer", "Simpson")


pizza = Restaurant.new("Pizza Hut")
donuts = Restaurant.new("Dunkin Donuts")
sushi = Restaurant.new("Wasabi")

mm_donuts = Review.new("yummy", simpson, donuts, 5, "delicious!")
good_pizza = Review.new("good", jiggy, pizza, 4, "bravo!")
great_pizza = Review.new("excellent", toxic, pizza, 5, "amazing!")

binding.pry
