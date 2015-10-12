# 1. string interpolation vs concat
# 2. extract repetative logic to methods
# 3. keep track of variable types (class)
# 4. variable scope determined by do... end; outer scope are availabe, not vice versa

require 'pry'

keep_going = true
numbers_invalid = true
operator_invalid = true


def say(msg)
  puts "------------ #{msg} -------------"
end

while keep_going
  while numbers_invalid
    checker = 0
    say "What's the first number?"
    num1 = gets.chomp

    say "What's the second number?"
    num2 = gets.chomp



    numbers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
    check = num1.split('') + num2.split('')

    check.each do |x|
      if numbers.include?(x)
        checker += 0
      else
        checker += 1
      end
    end

    if checker == 0
      numbers_invalid = false
    else
      say 'Invalid number try again!'
    end
  end

  while operator_invalid

    say "1) add 2) subtract 3) multiply 4) divide"
    operator = gets.chomp

    ops = ['1', '2', '3', '4']
    if ops.include?(operator)
      operator_invalid = false
    else
      say 'Invalid operator try again'
    end
  end
  binding.pry
  if operator == '1'
    result = num1.to_i + num2.to_i
  elsif operator == '2'
    result = num1.to_i - num2.to_i
  elsif operator == '3'
    result = num1.to_i * num2.to_i
  elsif operator == '4' && num2.to_i != 0
    result = num1.to_i / num2.to_f
  else
    say 'Division by zero, invalid'
    result = 'undefined'
  end

  puts "Result is #{result}"
  say "Press 'y' if you want to continue"
  continue = gets.chomp
  if continue == 'y'
    keep_going = true
    numbers_invalid = true
    operator_invalid = true
  else
    keep_going = false
  end
end

