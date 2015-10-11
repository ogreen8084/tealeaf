puts "Write a number between 0 and 100"
num = gets.chomp.to_i


answer = case

when num > 100 || num < 0 
	"#{num}  is an invalid number"

when  num >=0 && num <= 50
	"You number #{num} is between 0 and 50"
else
	"Your number #{num} is between 51 and 100"
end

puts answer
