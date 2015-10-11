a = 5

answer = case a
when 5
	"a is 5"
when 6
	"a is 6"
else
	"a is neither 5, nor 6"
end

puts answer


b = 6
answer2 = case
when b == 5
	"b is 5"
when b == 6
	"b is 6"
else
	"b is neither 5, nor 6"
end

puts answer2

a = 0
if a
	puts "how can this be true?"
else
	puts "it is not true"
end
