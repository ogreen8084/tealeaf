#the part of the code that is the block is do |num| puts num end.  

#rubyists prefer do..end for multi-line and {} for single lines

#ruby blocks create a new scope for local variables. 

#nested blocks create nested scopes.

#inner scope can access outer scope varaibles

#you can change varaibles from an inner scope and have that change affect the outer scope.

#method scopes are entirely self-contained. the only variable methods have acces to must be passed into methods

#constants behave like globals, you can use them inside of methods

USERNAME = 'Batman'

def authenticate
  puts "Logging in #{USERNAME}"
end

authenticate

FAVORITE_COLOR = 'taupe'

1.times do 
  puts "I love #{FAVORITE_COLOR}!"
end

loop do 
  MY_TEAM = "Phoenix Suns"
  break
end

puts MY_TEAM