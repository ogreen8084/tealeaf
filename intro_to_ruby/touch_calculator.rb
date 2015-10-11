# 1. string interpolation vs concat
# 2. extract repetative logic to methods
# 3. keep track of variable types (class)
# 4. variable scope determined by do... end; outer scope are availabe, not vice versa

require 'pry'

def say(msg)
  puts "------------ #{msg} -------------"
end

say "What's the first number?"
num1 = gets.chomp

say "What's the second number?"
num2 = gets.chomp

say "1) add 2) subtract 3) multiply 4) divide"
operator = gets.chomp



if operator == '1'
  result = num1.to_i + num2.to_i
  binding.pry
elsif operator == '2'
  result = num1.to_i - num2.to_i
elsif operator == '3'
  result = num1.to_i * num2.to_i
elsif operator == '4' && num2.to_i != 0
  result = num1.to_i / num2.to_f
end

puts "Result is #{result}"
