words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
words2 = words

array = []
words.each do |v|
	a =  v[0], b = v[1], c = v[2], d = v[3]
	words2.each do |x|
		y= x.split("")
		if y.include?(a[0]) && y.include?(b) && y.include?(c) && y.include?(d)
			array.push(x)
			array.push(v)
		end
	end
end

array.uniq!
puts array
puts '----------------------'

#online version
result = {}

words.each do |word| 
	key = word.split('').sort.join
	puts key
	if result.has_key?(key)
		result[key].push(word)
	else
		result[key] = [word]
	end
end

result.each do |k, v|
	puts "------"
	p v
end



