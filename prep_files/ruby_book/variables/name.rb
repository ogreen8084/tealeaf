puts 'Write your first name: '
first_name = gets.chomp
puts 'Write your last name: '
last_name = gets.chomp

name = first_name + ' ' + last_name

10.times do
	puts 'Hello ' + name
end

