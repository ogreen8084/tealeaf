x = 0

while x <= 10
	if x == 7
		break
	elsif x.odd?
		puts x
	end
	x += 1
end



names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', ]

names.each {|i| puts i }