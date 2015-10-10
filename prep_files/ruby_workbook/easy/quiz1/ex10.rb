flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]


hash = {}
flintstones.each_with_index do |item, index|
	hash[item] = index
end

puts hash