#take out redundancies by making a super-class, want to take out redundancies
#when I subclass, I have access ot all information of my superlcass
#you have everything from superclass available.  

#your can write a method in a class and it will no longer look at superclass
#its obvious, when you look at ancestors.


class Animal
  attr_accessor :name

  def initialize(n)
    @name = n
  end

  def eat 
    "#{name} is eating."
  end

  def speak
    "#{name} is speaking"
  end
end

class Mammal < Animal
  def warm_blooded?
    true
  end
end

module Swimmable
  def swim
    "I'm swimming"
  end
end

module Fetchable
  def fetch
    "#{name} is fetching!"
  end
end

class Dog < Mammal
  include Swimmable
  include Fetchable

  def speak
    "#{name} is barking"
  end

end


class Cat < Mammal

  def speak
    "#{name} is meowing"
  end
end

# kitty = Cat.new("kitty")
# puts kitty.name


 teddy = Dog.new('teddy')
# puts teddy.name

puts Dog.ancestors
puts teddy.warm_blooded?
puts teddy.swim
puts teddy.fetch

#modules for extracting common behaviors, two things happen when u include module
#1 if you look at order of ancestor, fetchable in front of swimmabl

#method order is afected by the order that you put it in
#the last module included is looked at first,when looking at methods
#don't want large modules, if you have large modules, its hard ot include
#when you reference mehtods make sure the class has those methods


#1. have detailed requirements or specifications

#2. Extract major nouns




#in ruby functions are methods
#this is how we extract common behaviors out of classes and keep an hiearchal structure

#and build organization, this only works if you have a hierarchal categories

#limitation is you can only have one superclass, a dog can't subclass from more than one thing

#polymorphism, in oop, want to inherit from multiple places
#multiple inheritance

#for example a reptile and a mammal may be able to swim


#method lookup chain, pulling it from method lookup chain
#in lrge projects introduce name spacing,
