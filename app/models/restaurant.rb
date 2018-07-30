class Restaurant
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.select{|restaurant| restaurant.name == name}
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def customers
    customer_list = []
    reviews.each do |review|
      unless customer_list.include?(review.customer)
        customer_list << review.customer
      end
    end
    customer_list
  end

  def average_star_rating
    rating_array = reviews.map {|review| review.rating}
    rating_array.inject(0){|sum, rating| sum + rating.to_f} / rating_array.length
  end

  def longest_review
    reviews.map {|review| review.content}.max
  end
end
