class Review

  ALL = []

  attr_accessor :content, :rating
  attr_reader :customer, :restaurant

  def initialize(content, customer, restaurant, rating)
    @content = content
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    ALL << self
  end

  def self.all
    ALL
  end

end
