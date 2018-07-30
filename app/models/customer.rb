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
    @@all.select {|customer| self.full_name == name}
  end

  def self.find_all_by_first_name(name)
  end

  def self.all_names
    all_full_names = []
    all_full_names << self.full_name
  end

  def add_review(restaurant, content, rating)
    Review.new(name, self, restaurant, rating, content)
  end

  def restaurants
    all_restaurants = Review.all.select {|review| review.customer == self}
    many_restaurants = all_restaurants.map {|review| review.restaurant}
    many_restaurants.uniq
  end


end
