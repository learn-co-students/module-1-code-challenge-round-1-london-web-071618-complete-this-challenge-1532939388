class Customer

  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
      @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
      Customer.all.find {|name| "#{name.first_name} #{name.last_name}" == name }
  end

  def self.find_all_by_first_name(name)
      Customer.all.select {|name| name.first_name == name }
  end

  def self.all_names
      Customer.all.map {|name| "#{name.first_name} #{name.last_name}"}
  end

  def add_review(restaurant, rating, content)
    review1 =  Review.new("review1", self, restaurant, rating, content)
  end

  def num_reviews
    all_reviews =  Review.all.select {|review| review.customer == self}
    all_reviews.size
  end

  def restaurants
    all_reviews =  Review.all.select {|review| review.customer == self}.uniq
  end



end



# - `Customer.find_by_name(name)`
#  - given a string of a **full name**, returns the **first customer** whose full name matches
# - `Customer.find_all_by_first_name(name)`
#  - given a string of a first name, returns an **array** containing all customers with that first name
# - `Customer.all_names`
#  - should return an **array** of all of the customer full names
