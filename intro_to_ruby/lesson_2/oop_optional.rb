class Car
  attr_reader :name

  puts "top level self is: " + self.inspect

  def initialize(n)
    @name = n
  end

  def self.my_class_method 
    "A class method"

  end

  def an_instance_method
    puts "self is " + self.inspect
    puts "An instance method"
  end
end

def Car.another_class_method
  puts "another class method!"
end

bob = Car.new('Bob')
bob.an_instance_method

jim = Car.new('jim')
jim.an_instance_method


puts Car.another_class_method


