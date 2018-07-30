class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.find_by_name(name)
    Review.all.find{|r| r.restaurant.name == name}
  end

  def self.all
    @@all
  end

  def customers
    Review.all.select{|r| r.restaurant == self}.map {|r| r.customer}.uniq
  end

  def reviews
    Review.all.select{|r| r.restaurant == self}.map {|r| r.content}
  end

  def average_star_rating
    Review.all.select{|r| r.restaurant == self}.map {|r| r.rating}.inject(0, :+) / reviews.size
  end

  def longest_review
    Review.all.select{|r| r.restaurant == self}.sort_by {|r| r.content.length}.reverse[0].content
  end
end


# - `Restaurant.all`
#   - returns an array of all restaurants
# - `Restaurant.find_by_name(name)`
#   - given a string of restaurant name, returns the first restaurant that matches

# - `Restaurant#customers`
#   - Returns a **unique** list of all customers who have reviewed a particular restaurant.
# - `Restaurant#reviews`
#   - returns an array of all reviews for that restaurant
# - `Restaurant#average_star_rating`
#   - returns the average star rating for a restaurant based on its reviews
# - `Restaurant#longest_review`
#   - returns the longest review content for a given restaurant
