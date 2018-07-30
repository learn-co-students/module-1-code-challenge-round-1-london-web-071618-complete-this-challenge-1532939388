class Customer
  attr_accessor :first_name, :last_name
@@all=[]
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all<<self
  end
#works
  def full_name
    "#{first_name} #{last_name}"
  end
  #works
  def self.all
    @@all
  end
  def find_by_name(name)
    Customer.all.find_by{|customer| customer.name == full.name}.first
  end
  def find_all_by_first_name(name)
    customer.all.find_by {|customer| customer.first_name==name}
  end
  def all_names
customers_names={}
end
def add_review(restaurant, content, rating)
Review.new(self, restaurant, rating)
end


def num_reviews
  Review.all.map {|review| review.customers }
end


def restaurant
  Review.all.select {|review| review.custumer==review.restaurant}.uniqu
end
end
