words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

words2 = words

new_arr = []
words.each do |x|
	str = x.chars.sort.join
	words2.each do |y|
		str2 = y.chars.sort.join
	if str == str2
		new_arr<< y
	end

end
end

puts new_arr.uniq