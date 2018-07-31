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
    @@all.select {|restaurant| restaurant.name == name}
  end

  def customers
    reviews.map {|review| review.customer}.uniq
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def average_star_rating
    all_ratings = reviews.map {|review| review.rating.to_f}
    all_ratings.inject(0) {|sum, el| sum + el} / all_ratings.size
  end

  def longest_review
    review_content = reviews.map {|review| review.content}
    review_content.max_by(&:length)
  end


end
