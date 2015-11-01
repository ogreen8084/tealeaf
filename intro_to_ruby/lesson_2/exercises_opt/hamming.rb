class Hamming
	def self.compute(str_a, str_b)

		unless str_a.length == str_b.length
			raise ArgumentError.new("Strands not equal")
		end

		mismatches = 0
		str_a.size.times do |n| 
			mismatches += 1 if str_a[n] != str_b[n]
		end
		mismatches
	end
end