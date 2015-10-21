class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def print_name
    puts self.name
  end

end

bob = Person.new("Steve")
bob.name ="Bob"

bob.print_name

