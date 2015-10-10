numbers = [1, 2, 3, 4]
numbers.each do |number|
	p number
	numbers.shift(1)
end

#should print 1 and 3

puts '----------------'

numbers = [1, 2, 3, 4]
numbers.each do |number|
	p number
	numbers.pop(1)
end

#should print 1 and 2