class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
      Restaurant.all.find {|restaurant| restaurant.name == name}
  end

  def customers
      all_reviews = Review.all.select {|review| review.restaurant == self}
      all_reviews.map {|review| review.customer}.uniq
  end

  def reviews
      Review.all.select {|review| review.restaurant == self}
  end

  def average_star_rating
      count = 0
      reviews.each {|review| count += review.rating}
      count/ (reviews.size)
  end



end



#
#
#
# - `Restaurant#customers`
#   - Returns a **unique** list of all customers who have reviewed a particular restaurant.
# - `Restaurant#reviews`
#   - returns an array of all reviews for that restaurant
# - `Restaurant#average_star_rating`
#   - returns the average star rating for a restaurant based on its reviews
# - `Restaurant#longest_review`
#   - returns the longest review content for a given restaurant
