require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

john = Customer.new("John", "Matthew")
john2 = Customer.new("John", "Smith")
cathy = Customer.new("Cathy", "Lenoir")
baris = Customer.new("Baris", "Isik")

french_table = Restaurant.new("French Table")
roma = Restaurant.new("Roma")

john_rev1 = Review.new(john, french_table, "Too french for my taste", 3)
cathy_rev1 = Review.new(cathy, french_table, "Perfect!", 5)
cathy_rev2 = Review.new(cathy, roma, "Pasta was a bit uncooked.", 4)
cathy_rev3 = Review.new(cathy, roma, "Pasta was much better this time", 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
