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

  # def self.find_by_name(full_name)
  #   fullname = name.full_name
  # end

  def self.find_all_by_first_name(name)
    all.select {|customers| customers.first_name == name}
  end

  def self.all_names
    all.map {|customers| customers.full_name}
  end

  def add_review(restaurant, content, rating)
    review = Review.new(self,restaurant, content, rating)
  end

  def restaurants
    reviews = Review.all.select {|restaurants| restaurants.customer == self}
    reviews.map {|rest| rest.restaurant.name}.uniq
  end

  # def num_reviews
  #   reviews = Reviews.all.map {|review| review.customer.name}
  #   amount = reviews.map{|num| reviews.count(num)}
  # end


end
