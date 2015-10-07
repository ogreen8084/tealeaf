a = ["white snow", "winter wonderland", "melting ice", "slippery sidewalk",
	"salted roads", "white trees"]

new_arr = []
a.each do |x|
	new_arr << x.split(" ")
end

puts new_arr