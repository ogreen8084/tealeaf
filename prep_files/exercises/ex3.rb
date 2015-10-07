arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

newe = arr.select {|number| number % 2 == 1 }

puts newe