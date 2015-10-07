#practice_each.rb
names = ['Bob', 'Joe', 'Steve', 'Janice', 'Mary']
x = 1

names.each do |name|
	puts "#{x}. #{name}"
	x += 1
end


def doubler(start)
	puts start
	if start < 10
		doubler(start * 2)
	end
end

doubler(1)


def fibonacci(number)
	if number < 2
		number
	else
		fibonacci(number - 1) + fibonacci(number - 2)
	end
end


puts fibonacci(8)


x = [1, 2, 3, 4, 5]
x.each do |a|
	puts a + 1
end

puts x
