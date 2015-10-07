x = 0

3. times do
	x += 1
end

puts x

y = 0
z = 0
3.times do
	y+= 1
	z = y
end

puts z

puts "hello"
puts "hi"
puts "how are you"
puts "i'm fine"

def say(words)
	puts words
end

say('hello')
say('hi')
say("how are you")
say("I'm fine")


def say_2(words)
	puts words + '.'
end

say_2("hello")
say_2("hi")
say_2("how are you")
say_2("I'm fine")


def say_3(words = "hello")
	puts words + '.'

end

say_3()
say_3('deez')