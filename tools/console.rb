require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#customer
customer1 = Customer.new('sarah', 'jacob')
customer2 = Customer.new('bob', 'builder')
customer3 = Customer.new('brooke', 'james')

#restaurant

restaurant1 = Restaurant.new('restaurant1', 5)
restaurant2 = Restaurant.new('restaurant2', 4)
restaurant3 = Restaurant.new('restaurant3', 3)

#review
review1 = Review.new(restaurant1, customer1)
review2 = Review.new(restaurant2, customer2)
review3 = Review.new(restaurant3, customer3)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
