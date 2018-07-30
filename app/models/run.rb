require 'pry'

require_relative './customer'
require_relative './restaurant'
require_relative './review'



john_whats = Customer.new("John", "Whats")
whats_up = Customer.new("whats", "up")
food = Restaurant.new("food")
good = Review.new("good", food, whats_up)


binding pry
