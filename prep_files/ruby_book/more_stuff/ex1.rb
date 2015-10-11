	
def has_a_lab?(string)
	if /lab/.match(string)
		puts string
	else
		puts "Not in the string"
	end
end
has_a_lab?("laboratory")
has_a_lab?("experiment")
has_a_lab?("Pans Labryinth")
has_a_lab?("elaborate")
has_a_lab?("polar bear")



