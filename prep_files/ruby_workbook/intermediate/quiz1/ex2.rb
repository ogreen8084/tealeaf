statement = "The Flintstones Rock"

statement2 = statement.split(//)

statement2.uniq!

hash = {}
statement2.each do |x|
	hash[x] = statement.count x
end

puts hash