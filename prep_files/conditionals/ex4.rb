#1
'4' == 4 ? puts("TRUE") : puts("FALSE")  #should be FALSE

#2
x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)  #should be TRUE
	puts "Did you get it right?"
else
	puts "Did you?"
end

#3
y = 9
x = 10
if (x + 1) <= (y)
	puts "Alright."
elsif (x + 1) >= (y)  #sill evaluate this one first, mult. true
	puts "Alright now!"
elsif (y + 1) == x
	puts "ALRIGHT NOW!"
else
	puts "Alrighty"
end
