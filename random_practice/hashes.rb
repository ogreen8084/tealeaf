person = {name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown'}

# person.each do |key, value|
#   puts "Bob's #{key} is #{value}"
# end

# def greeting(name, options = {})
#   if options.empty?
#     puts "Hi, my name is #{name}"
#   else
#     puts "Hi, my name is #{name} and I'm #{options[:age]}" +
#          " years old and I live in #{options[:city]}."
#   end
# end

# greeting("Bob")
# greeting("Bob", {age: 62, city: "New York City"})


# person = {"height" => "6 ft"}  #string as a key

# person = ["height"] => "6 ft"}

# {["height"]=> "6 ft"}


{1 => 'one'}  #integer as key

{45.324 => "forty-five point something"} #float as key

{{key: "key"} => "hash as a key"}  #hash as a key

#common methods

name_and_age = {"Bob" => 42, "Steve" => 31, "Joe" => 19}
# puts name_and_age.has_key?("Steve")

# puts name_and_age.has_key?("Larry") ? "Yes Larry is here": "should print this, Larry not here"

# puts name_and_age.select {|k, v| k == "Bob" || k == "Steve"}.keys
# puts name_and_age.select {|k, v| k == "Bob"}

# person = {1 => 'one'}
# # puts person.key
# puts person[:name]

# puts name_and_age.length

# puts name_and_age.invert


# puts name_and_age.fetch("Steve")

# puts name_and_age.fetch("Larry", "Larry ain't in this hash!")

# puts name_and_age.to_a

# puts name_and_age.keys

puts name_and_age.values[1]