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
    all.find {|restuarants| restuarants.name == name}
  end

  def customers
    total_customers = Review.all.select {|customers| customers.restaurant == self}
    total_customers.map {|custom| custom.customer}
  end

  def reviews
    stars = Review.all.select {|reviews| reviews.restaurant == self}
    #stars.inject(0) { |sum, el| sum + el } / stars.size
  end

  def average_star_rating
    reviews.map {|ratings| ratings.rating}
  end

  def longest_review
    all_reviews = reviews.map {|contents| contents.content}
    all_reviews.max_by(&:length)
  end

end
