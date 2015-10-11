def add_three(n)
	n + 3
end

puts add_three(5)

add_three(5).times { puts 'this should print 8 times'}

puts "hi there".length.to_s



def add_three1(n)
	new_value = n + 3
	puts new_value
	new_value
end

add_three1(5).times { puts "will this work?" }

def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

puts add(100, 200)
puts subtract(100, 200)

def multiply(num1, num2)
	num1 * num2
end

puts multiply(100, 200)


puts add(subtract(80,100), multiply(subtract(20,6), add(30,5)))