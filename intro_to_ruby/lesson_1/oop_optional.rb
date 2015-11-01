class Car
  attr_reader :name

  def initialize(n)
    @name = n
  end

  def self.my_class_method 
    "A class method"

  end

  def an_instance_method
    "An instance method"
  end
end

bob = Car.new('Bob')

puts Car.my_class_method

puts bob.an_instance_method

