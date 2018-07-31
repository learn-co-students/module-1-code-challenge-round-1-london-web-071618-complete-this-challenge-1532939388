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
    @@all.select {|customer| customer.full_name == name}.first
  end

  def self.find_all_by_first_name(name)
    @@all.select {|customer| customer.first_name == name}
  end

  def self.all_names
    @@all.map {|customer| customer.full_name}
  end

  def add_review(restaurant, content, rating)
    Review.new(name, self, restaurant, rating, content)
  end

  def num_reviews
    Review.all.select {|review| review.customer == self}.count
  end

  def restaurants
    all_restaurants = Review.all.select {|review| review.customer == self}.map {|review| review.restaurant}.uniq
  end


end
