class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @rating = rating
    @@all << self
  end

  def self.all
    #   - returns an array of all restaurants
    @@all
  end

  def self.find_by_name(name)
    Restaurant.all.find {|restaurant| restaurant.name == name}
  end

  def customers
    restaurant_review = Review.all.select{|review| review.restaurant == self}
    restaurant_review.map {|review| review.customer}.uniq
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def average_star_rating
    #  - returns the average star rating for a restaurant based on its reviews
    reviews.map {|review| review.rating}
  end



end



- `Restaurant#longest_review`
  - returns the longest review content for a given restaurant
