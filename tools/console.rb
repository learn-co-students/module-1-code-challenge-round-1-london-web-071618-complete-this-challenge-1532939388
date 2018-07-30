require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

sarah = Customer.new("Sarah", "Stevens")
job = Customer.new("Steve", "Jobs")
mccartney = Customer.new("Steve", "McCartney")

kingsman = Restaurant.new("The Kingsman")
hall = Restaurant.new("The Hall")

sarah.add_review("Not bad", hall, 4)
job.add_review("Excellent", kingsman, 5)
job.add_review("Decent", hall, 4)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
