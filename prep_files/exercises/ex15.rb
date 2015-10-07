arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

puts arr.delete_if {|x| x.start_with("s")}

puts arr.delete_if {|x| x.start_with?("w") || x.start_with?("s") }
