munsters = {
	"Herman" => { "age" => 32, "gender" => "male" },
	"Lily" => { "age" => 30, "gender" => "female" },
	"Grandpa" => { "age" => 402, "gender" => "male" },
	"Eddie" => { "age" => 10, "gender" => "male" }
}

age = 0
munsters.each do |k,v|
	if v["gender"] == "male"
		age += v["age"]
	end
end

puts age

#book way
munsters2 = munsters

total_male_age = 0
munsters2.each do |name, details|
	total_male_age += details["age"] if details["gender"] == "male"
end
