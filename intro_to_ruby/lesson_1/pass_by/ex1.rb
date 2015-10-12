def change_name(name)
  name = 'bob'
end

name = 'jim'
change_name(name)
puts name

def cap(str)
  str.capitalize!
end

name = "jim"
cap(name)
puts name

name = "jim"

def cap(str)
  str.capitalize
end

name = "jim"
cap(name)
puts name


#def add_name(arr, name)
#  arr << name
#end

def add_name(arr, name)
  arr = arr + [name]
end


names = ['bob', 'kim']
add_name(names, 'jim')
puts names.inspect


a = 'hi there'
b = a
a = 'not here'

puts b
puts a

a = 'hi there'
b = a
a << ', Bob'

puts b
puts a

a = [1, 2, 3, 3]
b = a
c = a.uniq

p a
p b
p c


def test(b)
  b.map! {|letter| "I like the letter #{letter}"}
end

a = ['a', 'b', 'c']
puts test(a)


puts a
