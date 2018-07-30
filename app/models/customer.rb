class Customer

  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    #   - should return **all** of the customer instances
    @@all
  end


  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    #   - given a string of a **full name**, returns the **first customer** whose full name matches
    Customer.all.find {|full_name| full_name == name}
  end

  def self.find_all_by_first_name(name)
    Customer.all.select{|first_name| first_name == name}
  end

  def add_review(restaurant, content, rating)
    #  - given a **restaurant object**, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
    new_review = Review.new (restaurant, self, content, rating)
  end

  def num_reviews
    customer_reviews = Review.all.select {|review| review.customer == self}
    no_of_reviews = customer_reviews.length
  end

  def restaurants
    customer_reviews = Review.all.select {|review| review.customer == self}
    customer_reviews.map {|review| review.restaurant|}.uniq
  end

end
