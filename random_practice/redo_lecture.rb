#OOP in Ruby
#1. classes and objects, classes are the cookie cutter and objects are the cookies
#want to create a class, that 

#2. classes contain behaviors, behaviors correlate to instance methods
#3. instance variables contain states
#4. object are instantiated from classes, and contain states and behaviors 
#5. class variables and methods
#6. compare with procedural

#there are certain concerns that operate at the class level, suppose we want to keep trac of how many
#dog objects there are, wouldn't make sense to keep in a specific object, you would do at a class level
#class variables start with two @@ symbols, instance variables should be inside methods
#class variables in space in the class

#instance methods correlate to behaviors

#like speaking, etc..

#on top of that we have a state that we need to keep track of.

#instance methods encapsulate behaviors for an object, defined in a class
#instance variables shared among objects, behaviors shared by objects

#new correlates to initialize, parameters are passed to initialized, the name is the atate of the object

#we keep track of object specific state through instance variables
class Dog
  include Swimmable
  attr_accessor :name, :height, :weight

  @@count = 0

  def self.total_dogs
    "Total number of dogs: #{@@count}"
  end

  def initialize(n, h, w)
    @height = h
    @name = n
    @weight = w
    @@count += 1
  end

  def speak
    name + " bark!"
  end

  def ssn
    #555-55-5555
    "xxx-xx-" + @ssn.split('-').last
  end

  def ssn(new_ssn)
    if valid_format?(new_ssn)
      @ssn = new_ssn
    end
  end

  def update_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w 
  end

#can mix in modules to classes that have these behaviors
  module Swimmable
    def swim
      "#I'm swimming"
    end
  end
  # you have to use self to know u are using the setter method
  #instance variables are like raw data, but you don't want to access the raw data
  # you always as a general rule want to use getters and setters, sanitization, rapper, consistency
  #encapsulation

  #suppose a class keeps track of ssn, instead of accessing the ssn, use the getter method
  #it allows me to sanitize the variable, or check or intercept that one place
  #otherwise if a system changes, you ahve to change in different places and that's dangerous
  # #getter
  # def name
  #   @name
  # end

  # #setter allows us to retrieve and set the state of our objects, there is a shortcut in ruby
  # #attr-accessor
  # def name=(new_name)
  #   @name = new_name

  # end

  #instance methods are all common across the class, in a high level nutshell this is ht OOP is all about

  # you can call intance methods in other insances, remove the @ sign and you can still access

  def info
    "#{name} is #{height} feet tall and weighs #{weight}"
  end
end

teddy = Dog.new('teddy', 3, 95)
fido = Dog.new('fido', 1, 35)

teddy.update_info('Roosevelt', 5, 125)

# puts teddy.info

# puts Dog.total_dogs


# puts Dog.total_dogs
puts teddy.swim
# puts teddy.speak
# puts fido.speak
# puts teddy.info
# puts fido.info

# teddy.name = "Roosevelt"
# puts teddy.info
# puts teddy.height
# puts fido.weight
# fido.weight = 100
# puts fido.weight
#besides behaviors, these objects have different states
#for example, you can give it a name
#right now, no difference between teddy and fido
#once you put the name, now they have different states, OOP is a new way of coding
# you want to build up objects with certain behaviors and certain states
# we piece them together, orchestrate them together and use them to build an application
#be consistent in methods, either return or use puts.  be consistent


#at a high level, this is the relationship between classes and objects, when we make new, we are instantiating an object (creating it)

#instantiating is whats meant by making

#we have an instance variable and ew need to set it, we also need a wa to change a name

#we want to change state of object often, getters and setters, we can create a method by the same name as instance method

#instead of getting name we can do that. 


#why do OOP, when you look at this solution, your solution looks liek this, you should feel that
# man I don't want to touch this, there's so many parts that the ripple effects for one chane is so massive that it touches every
#aspect o this code, add a dealer or soemething.

#any bug or any feature you introduce, the ripple effect goes across the application, have to lead every part in your head
#have to consider all edge cases, have to remember all the edge cases. 

#impossible, to do it this way. why do developers use OOP, oop concerns are packaged in a mesthod

#if you have an error these methods are contracts to whoever uses methods. 

#in oop, the ripple effects are contained, when working on oop, a class, just focsded on the class, not the gameplay

#focuse don the class and not the gameplay, oop allows oyou to build more complicated proraming
#not requiring genius to remember all edge cases. much more, fun to work object orinted way.

#it is hard, though from a paradigm shift standpoint

#reuqires a mental shift from procedural to oop.  