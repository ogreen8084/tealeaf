munsters = {
	"Herman" => { "age" => 32, "gender" => "male" },
	"Lily" => { "age" => 30, "gender" => "female" },
	"Grandpa" => { "age" => 402, "gender" => "male" },
	"Eddie" => { "age" => 10, "gender" => "male" },
	"Marilyn" => { "age" => 23, "gender" => "female" }
}

munsters2 = munsters

munsters.each do |k, v|
	answer = case 

		when  v["age"] <= 17 
		 "kid"
	  when v["age"] >= 18 &&  v["age"] < 64
	  	"adult"
	  when v["age"] >= 65
	  	"senior"
	  else
	  	"it aint working"
	 end
	 v["age_group"] = answer

end

munsters2.each do |name, details|
	case details["age"]
	when 0...18
		details["age_group"] = "kid"
	when 18...65
		details["age_group"] = "adult"
	else
		details["age_group"] = "senior"
	end
end

puts munsters2
		




