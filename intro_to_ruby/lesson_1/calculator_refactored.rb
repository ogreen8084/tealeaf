operator = ''
num1 = ''
num2 = ''
total = ''

def valid_int?(num)
  !/^[0-9]+$/.match(num).nil?
end 

def valid_oper?(num)
  !/^[1-4]+$/.match(num).nil?
end
loop do
  loop do
    puts "Input a number"
    num1 = gets.chomp
    puts "Input a second number"
    num2 = gets.chomp

    if valid_int?(num1)  && valid_int?(num2)
      break
    else
      puts 'Try again, please enter numbers only!'
    end
  end

  loop do
    puts "Please choose an operation"
    puts "1) Addition 2) Subtraction 3) Multiplication 4) Division"
    operator = gets.chomp
    if valid_oper?(operator)
      break
    else
      puts 'Try again, please enter a choose a valid operation'
    end
  end

  if operator == '1'
    total = num1.to_i + num2.to_i
  elsif operator == '2'
    total = num1.to_i - num2.to_i
  elsif operator == '3'
    total = num1.to_i * num2.to_i
  elsif operator == '4' && num2.to_i != 0
    total = num1.to_i / num2.to_f
  else
    total = 'undefined'
  end

  puts "You chose operation #{operator} your total is #{total}"
  puts "Press 'y' to perform another calculation"
  again = gets.chomp
  if again != 'y'
    break
  end
end



