# def say(words)
#   puts words
# end

# say("hello")
# say("hi")
# say("how are you")
# say("I'm fine")

# def say(words)
#   puts words + '.'
# end

# say("hello")
# say("hi")
# # say("how are you")
# # say("I'm fine")

# def say(words='hello')
#   puts words + '.'
# end

# say()
# say('hi')
# say('how are you')
# say("I'm fine")

# def some_method(number)
#   number = 7
# end

# a = 5
# some_method(a)
# puts a


# a = [1, 2, 3]
# def mutate(array)
#   array.pop
# end

# p "Before mutate method. #{a}"
# mutate(a)

# p "After mutate method: #{a}"

# def add_three(number)
#   return number + 3
#   number + 4
# end

# returned_value= add_three(4)
# puts returned_value


# def just_assignment(number)
#   foo = number + 3
#   puts foo
# end

# puts just_assignment(4)

# def add_three(n)
#   n + 3
# end

# puts add_three(5)


# # add_three(5).times {puts 'this should print 8 times'}.times {puts 'this should print 8 times.'}


# "hi there".length.times {puts 'this should print 8 times also.'}


# def add_three(n)
#   new_value = n + 3
#   puts new_value
#   new_value
# end

# puts add_three(5)

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

# add(20, 45).times {puts 'this will print 65 times'}

subtract(add(20, 45), subtract(80, 20)).times {puts 'this will print 5 times'}