# loop do
#   puts "This will keep printing until you hit Ctrl + c"
#   break
# end

# i = 0

# # loop do 
# #   loop do 
# #     i += 1
# #     puts "#{i}"
# #     break
# #   end
# #   puts "still in this loop sucker"
# # end

# i = 0
# loop do
#   i += 2
#   puts "#{i}"
#   if i == 10
#     break
#   end
# end


# i = 0
# loop do 
#   i += 2
#   if i == 4
#     next 
#   end
#   puts "#{i}"
#   if i == 10
#     break
#   end
# end

# x = gets.chomp.to_i

# while x >= 0
#   puts x
#   x -= 1
# end

# puts "Done!"



# x = gets.chomp.to_i
# until x < 0
#   puts x
#   x -= 1
# end

# puts "Done!"

# loop do 
#   puts "Do you want to do that again?"
#   answer = gets.chomp.upcase
#   if answer != 'Y'
#     break
#   end
# end

# begin
#   puts "Do you want to do that again?"
#   answer = gets.chomp
# end while answer == 'Y'

# x = 0
# while x <= 10
#   if x.odd?
#     puts x
#   end
#   x += 1
# end

# x = 0
# while x <= 10
#   if x == 3
#     x += 1
#     next
#   elsif x.odd?
#     puts x
#   end
#   x += 1
#   puts " never made it here"


# names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']

# names.each {|name| puts name }


names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']

x = 1
names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end

puts x