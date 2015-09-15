puts "Write a number between 0 and 100"
num = gets.chomp.to_i

if num > 100 || num < 0
	puts "#{num}  is an invalid number "
elsif num >=0 && num <= 50
	puts "You number #{num} is between 0 and 50"
else
	puts "Your number #{num} is between 51 and 100"
end