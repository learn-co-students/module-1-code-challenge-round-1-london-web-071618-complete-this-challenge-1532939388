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
    #given a string of restaurant name, returns the first restaurant that matches
    @@all.select {|restaurant| restaurant.name == name}
  end

  def customers
    # Returns a unique list of all customers who have reviewed a particular restaurant.
    self.reviews.collect{|review| review.customer}.uniq
  end

  def reviews
    # returns an array of all reviews for that restaurant
    Review.all.select{|review| review.restaurant == self}
  end

  def average_star_rating
    # returns the average star rating for a restaurant based on its reviews
    array_ratings = self.reviews.collect {|review| review.rating.to_f}
    sum = array_ratings.inject(0) {|sum, el| sum += el}
    (sum / array_ratings.count).round(2)
  end

  def longest_review
    # returns the longest review content for a given restaurant
    length = 0
    longest = []
    self.reviews.each {|review|
      if review.content.length > length
        length = review.content.length
        longest << review
      end}
      longest.last
  end

end
