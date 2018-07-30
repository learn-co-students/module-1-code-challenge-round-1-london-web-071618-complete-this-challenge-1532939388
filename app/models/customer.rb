class Customer

  ALL = []

  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    ALL << self
  end

  def self.all
    ALL
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    all.find {|f| f.full_name == self}
  end

  def self.find_all_by_first_name(name)
    all.map {|f| f.first_name == self}
  end

  def self.all_names
    all.map {|f| f.full_name}
  end


end
