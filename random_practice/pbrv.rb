#pass by value means when I have a method, and I'm passing in an argument

#pass by value means you are passing the value, not the reference!!!
#basically you are working on a copy, the outer string will never be manipulated.
#if ou want to change you have to reset teh value.
#pass by reference, when I make a change, the outer varaiable is being changed
#pass by reference, talking about pointers, pointers to space in memory. 

#ruby does in-between with pass by reference
def some_method(obj)
  obj.uniq!
end

outer_obj = [1, 2, 3, 3, 2]

some_method(outer_obj)

puts outer_obj