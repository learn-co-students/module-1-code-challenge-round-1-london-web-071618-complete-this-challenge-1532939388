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
    first_and_last_name = name.split(" ")
    self.all.select {|customer| customer.first_name == first_and_last_name[0] && customer.last_name == first_and_last_name[1]}
  end

  def self.find_all_by_first_name(name)
    self.all.select {|customer| customer.first_name == name}
  end

  def self.all_names
    self.all.map do |customer|
      "#{customer.first_name} #{customer.last_name}"
    end
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def customer_reviews
    Review.all.select{|review| review.customer == self}
  end

  def num_reviews
    customer_reviews.count
  end

  def restaurants
    restaurant_list = []
    customer_reviews.each do |review|
      unless restaurant_list.include?(review.restaurant)
        restaurant_list << review.restaurant
      end
    end
    restaurant_list
  end
end
