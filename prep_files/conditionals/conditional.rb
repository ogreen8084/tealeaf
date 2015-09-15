#conditional.rb 

puts "Put in a number"
a = gets.chomp.to_i

if a == 3
	puts "a is 3"
elsif a == 4
	puts "a is 4"
else
	puts "a is neither 3, nor 4"
end

#ex1
puts "Put in another number"
x = gets.chomp.to_i
puts "x is 3" if x == 3


#ex2
puts "Put in another number"
x = gets.chomp.to_i
if x == 3
	puts "x is 3"
elsif x == 4
	puts "x is 4"
end

#ex3
puts "Put in another number"
x = gets.chomp.to_i
if x == 3
	puts "x is 3"
else
	puts "x is not 3"
end

#ex4
puts "Put in a final number"
x = gets.chomp.to_i
if x ==3 then puts "x is 3" end

#ex5
puts "Put in a final, final number"
x = gets.chomp.to_i
puts "x is not 3" unless x == 3


