person = { name: "Bob", occupation: "web developer", hobbies: "painting"}

if person.has_value?("web developer")
	puts "Got it!"
else
	puts "Nope!"
end