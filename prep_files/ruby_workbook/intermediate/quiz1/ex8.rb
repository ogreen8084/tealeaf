str = "yeah I know that you can't do this stuff but you will get better"


str2 = str.split

str2.each do |x|
	x.capitalize!
end

puts str2.join(" ")

