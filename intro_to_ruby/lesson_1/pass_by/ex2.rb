a = 'hi there'
b = a
a.gsub!(' ', '_')
puts b
puts a

a = 'hi there'
b = a
a = [1, 2, 3]
puts b
p a