def some_method(obj)
	obj.uniq
end

outer_obj = [1, 2, 2, 3, 3]
outer_obj = some_method(outer_obj)

puts outer_obj