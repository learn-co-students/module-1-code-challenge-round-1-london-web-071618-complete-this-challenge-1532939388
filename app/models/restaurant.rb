class Restaurant
  attr_accessor :name, :review
@@all=[]
  def initialize(name)
    @name = name
    @review = review
    @@all<<self

  end
  #works
  def self.all
    @@all
  end


def find_by_name(name)
  restaurant.all.find_by {|restaurant| restaurant.name == name }
end

def customers
review.all.map {|review| review.customers == review.restaurant}.uniqu
end
def average_star_rating
end

def longest_review

end


end
