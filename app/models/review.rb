class Review

  attr_reader :customer, :restaurant
  attr_accessor :content, :rating

  @@all = []

  def initialize(restaurant, customer, content, rating)
    @restaurant = restaurant
    @customer = customer
    @content = content
    @rating = rating
    @@all << self
  end

  def self.all
    #   - returns all of the reviews
    @@all
  end

  def customer
    #can be accessed through attribute_reader
  end

  def restaurant
  #   can be accessed through attribute_reader
  end

  def rating
    #   - returns the star rating for a restaurant. This should be an integer from 1-5
    restaurants_review = Review.all.select {|review| review.restaurant == self}
    restaurants_review.map {|restaurants| restaurant.rating}
  end

  def content
  #   - returns the review content, as a string, for a particular review --> can be accessed through attribute accessor
  end
end


# -
