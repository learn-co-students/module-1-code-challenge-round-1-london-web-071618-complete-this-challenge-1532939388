require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#customers
danny_devito = Customer.new("Danny", "Devito")
edith_edwards = Customer.new("Edith", "Edwards")
frank_fuller = Customer.new("Frank", "Fuller")
danny_devine = Customer.new("Danny", "Devine")

#restaurants
indian = Restaurant.new("Indian")
italian = Restaurant.new("Italian")
thai = Restaurant.new("Thai")

#reviews
danny_indian_review =Review.new(indian, "a review about a indian resaturant", 4, danny_devito)
danny_italian_review =Review.new(italian, "a review about an italian resaturant", 2, danny_devito)
edith_italian_review =Review.new(italian, "a review about an italian resaturant djioapdjfias", 3, edith_edwards)
frank_thai_review =Review.new(thai, "a review about a thai resaturant", 5, frank_fuller)
edith_italian_review2 =Review.new(italian, "Edith reviews the same italian restuarant again just because", 5, edith_edwards)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
