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
    @@all.find {|restaurant| restaurant.name == name}
  end

  def customers
    all_customers = Review.all.map {|review| review.restaurant == self}
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def average_star_rating
    all_reviews = Review.all.select {|review| review.restaurant == self}
    all_ratings = all_reviews.map {|review| review.rating}
    all_ratings.inject(0) {|sum, el| sum + el} / all_ratings.size
  end

end
