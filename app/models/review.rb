class Review
  @@all=[]
attr_accessor :customer, :restaurant, :rating
attr_reader

  def initialize(customer, restaurant, rating)  
    @customer = customer
    @restaurant=restaurant
    @rating = rating
    @@all << self
end
#works
def self.all
  @@all
end
def restaurant
  restaurant_review =restaurant.all.find {|restaurant| restaurant.name = self}
  restaurant_review.map {|customer| customer.name == name}
end

end
