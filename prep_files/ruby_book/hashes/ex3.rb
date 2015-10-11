h1 = { abra: "cadabra", i: "know", you: "won", he: "lost" }


h1.each do |k,v|
	puts k
end

h1.each_value { |value| puts value }

h1.each { |k,v| puts "#{k} #{v}"}

