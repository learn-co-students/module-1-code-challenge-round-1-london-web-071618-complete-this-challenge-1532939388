class Review

  ALL = []

  attr_accessor :review
  attr_reader :customer, :restaurant

  def initialize(review, customer, restaurant)
    @review = review
    @customer = customer
    @restaurant = restaurant
    ALL << self
  end

  def self.all
    ALL
  end

  def customer
    self.all.each {|c| c.customer}
  end

  def restaurant
    self.all.each {|r| r.restaurnt}
  end

  def rating

  end

  def content
    self.all.each {|r| r.review}
  end


end
