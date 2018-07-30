class Review

  attr_accessor :name, :content, :rating
  attr_reader :customer, :restaurant

  @@all = []

  def initialize(name, customer, restaurant, rating, content)
    @name = name
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    Review.all.map {|review| review.customer == self}
  end

  def rating
  end



end
