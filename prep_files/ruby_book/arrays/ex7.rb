array_1 = [1, 2, 3, 4, 5, 6, 7, 8]
array_2 = []
array_1.each do |n|
	array_2 << n + 2
end

p array_1
p array_2