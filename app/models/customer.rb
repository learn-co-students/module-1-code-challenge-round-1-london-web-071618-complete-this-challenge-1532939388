class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find {|n| (n.first_name + " " + n.last_name) == name}
  end

  def self.find_all_by_first_name(name)
    self.all.select {|n| n.first_name == name}
  end

  def self.all_names
    self.all.map {|n| n.first_name + " " + n.last_name}
  end

  def add_review(content, restaurant, rating)
    review = Review.new(content, self, restaurant, rating)
    Review.all << review
  end

  def num_reviews
    Review.all.select {|review| review.customer == self}.count
  end

  def restaurants
    Review.all.select {|review| review.restaurant}.uniq
  end
end
