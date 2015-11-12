a = "hi there"

b = a
a = "not here"

puts b
puts a

a = "hi there"
b = a
a << ", Bob"

puts b
puts a

# variables are pointers to physical spaces in memory
# << mutates the caller and modifies he existing memory space

# if you call a method that mutates the caller, it wil chagne the value in that address 
#space and any variable pointing there will be affected

#always pay attention whether your variables are pointing to the same object
# or if they are dealing with copies that occupy difeferent address space in memory.

def test(b)
  b.map! {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']

puts test(a)

puts a


# def take_block(number, &block)
#   block.call
# end

# [1, 2, 3, 4, 5].each do |number| 
#   take_block number do 
#     puts "Block being called in the method! #{number}."
#   end
# end

def take_proc(proc)
  [1, 2, 3, 4, 5].each do |number|
    proc.call number
  end
end

proc = Proc.new do |number|
  puts "#{number}. Proc being called in the method!"
end

# take_proc(proc)


# #exception_example.rb
# names = ['bob', 'joe', 'steve', nil, 'frank']

# names.each do |name| 
#   begin 
#     puts "#{name}'s name has #{name.length} letters in it."
#   rescue
#     puts "Something went wrong!"
#   end
# end

# zero = 5
# puts "Before each call"
# zero.each {|element| puts element } rescue puts "Can't do that!"
# puts "After each call"

# def divide(number, divisor)
#   begin 
#     answer = number / divisor
#   rescue ZeroDivisionError => e 
#     puts e.message
#   end
# end

# puts divide(16, 4)
# puts divide(4, 0)
# puts divide(14, 7)

# def greet(person)
#   puts "Hello" + person
# end

# greet("John")
# greet(1.to_s)
# greet("Jack")


# def space_out_letters(person)
#   return person.split("").join(" ")
# end

# def greet(person)
#   return "H e l l o, " + space_out_letters(person)
# end

# def decorate_greeting(person)
#   puts "" + greet(person) + ""
# end

# decorate_greeting("John")
# decorate_greeting(1.to_s)

# a = 'hi there'
# b = a
# a.gsub!(' ', '_')
# puts b
# puts a

a = "hi there"
b = a
a = [1, 2, 3]

puts b

puts a