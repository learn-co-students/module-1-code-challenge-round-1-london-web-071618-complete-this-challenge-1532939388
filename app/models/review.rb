class Review

attr_reader :customer
attr_accessor :content, :restaurant, :rating

@@all = []

def initialize(content, customer, restaurant, rating)
  @customer = customer
  @rating = rating
  @restaurant = restaurant
  @content = content
end

def self.all
  @@all
end

def review_restaurant

end

def review_rating

end

def review_content

end

def review_customer
  self.all.select {|review| review.customer.first_name}
end

end
