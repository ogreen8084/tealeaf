ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10}

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

additional_ages.each do |k, v| 
	ages[k] = v
end

puts ages