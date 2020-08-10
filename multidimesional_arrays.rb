points = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
p points[1][2] # returns 6 - element with index 2 from sub-array with index 1
one, two, three = points # unpacking multidimensional array
p one
p two
p three

array1 = [4, 8, 15, 16, 23, 42]

def evens_and_odds(numbers)
  # return []
  numbers.partition { |number| number.odd? }
end

p evens_and_odds(array1)

points.flatten # returns single array with all nested elements, can be used with !

names = ["Sasha", "Vasya", "Petya"]
age = [35, 25, 36]
registered = [true, false]
p names.zip(age, registered) # creates multidimensional array, elements corresponding by indexes
