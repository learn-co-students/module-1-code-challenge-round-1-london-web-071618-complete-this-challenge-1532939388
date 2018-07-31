class Restaurant

  ALL = []

  attr_accessor :name

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def self.find_by_name(name)
    all.find {|f| f.name == name}
  end

  def customers
    Review.all.map {|c| c.customer}.uniq
  end

  def reviews
    Review.all
  end

  def average_star_rating
    average_rating = Review.all.map {|r| r.rating}
    average_rating.inject(0) {|sum , el| sum + el} / average_rating.size
  end

  def longest_review
    longest_review = Review.all.map {|c| c.content}
    longest_review.max_by(&:length)
  end

end
