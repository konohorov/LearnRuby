# .to_a - transform to array
# .empty? - checks if no elements, .length == 0
# .nil? - if array, array element (or ny other object) is nil
# .first, .last - may be with arguments
# .pop, .shift - may be with arguments
# arrays iteration:
#   array.each do |i|     array.each do |i|
#    while()                unless()
#     ...                     ...
#     break                   next
#    end                    end
#   end                   end
# .index, .include?
# .any? {}, .all? {}, .none? {} - return bool value depends on condition in block
# .uniq - removes duplicate elements, can be used with !
# .compact - removes nil from array, can be used with !
# .inject(), .reduce() - operation with all elements, like sum or multiply
# .sample() - returns random element, or number of elements (specified in args)
# - (minus sign) removes provided elements: [1, 2, 3] - [2] removes 2
# & (ampersand sign) returns array with unique common elements: [1, 2, 3] & [2, 3, 4] returns [2, 3]


%w["a", "b", "c"] # array of strings


points = [2, 6, 8, 6, 4, 8, 7, 2, 0, 6]
points.fetch(10, "out of bounds") # returns element by index, if out of bounds can return custom message/value

points[3] # returns element with index 3
points[3, 5] # returns array of elements, 3 - index, 5 - number of elements
points[3..5] # range of indexes
points.slice(3) # the same as above methods
points.values_at(1, 5, -2, 5) # returns array of elements by indexes
points[5] = 1 # overwrites element
points[points.length] = 4 # add element to the end
points[15] = 2 # missed indexes filled with nil
points[1..3] = [5, 6, 5] # overwrites elements with provided
points.count # number of elements = .length = .size
points.count(6) # number of provided elements, where 6 - object
points.first # returns 1st element
points.first(3) # returns first three elements
points.push(4) # add element to the end. opposite method .unshift
points << 3 << 2 << 1 # shovel operator - add elements to the end
points.insert(6, 7) # first arg - index, second - object
points.pop # removes and removes last element, it can be stored in variable. opposite method .shift
points.shift # removes and returns first element, it can be stored in variable.
points.pop(2) # removes last 2 elements, it can be stored in array
points.each { |i| puts "#{i} + 1" } # required block {} or do-end with iterator ||, where i = object from array
points.each_with_index { |point, i| puts "point * #{i}" } # each loop with element and its index
points1 = points.map { |point| puts "point * 2" } # .map, .collect - create new array after operations in first array
points1.sort # sort array accending, return an array, so can be used with ! , .sort.reverse - descending order
points.concat([1, 2, 3]) # concatenate arrays, mutates array (returns new array)
points.min # alternative array.sort[-1]
points.max # alternative array.sort[0]
def custom_min(arr)
  min = arr[0]
  arr.each { |value| min < value if value < min}
  min
end
animals = ["cheetah", 'lion', "cat", "dog",]
animals.select { |animal| animal.include?("c") } # returns array with elements, that fit the condition
animals.find { |animal| animal.include?("c") } # returns first element, that meet the condition (.find == .detect)
animals.find_all { |animal| animal.include?("c") } # returns all elements, that meet the condition
animals.reject { |animal| animal.include?("c") } # returns array with elements, that do not fit the condition (opposite to find_all)
animals.partition { |animal| animal.include?("c") } # returns multidimensional array with arrays, that fit the condition
[1, 2, 3] | [3, 4, 5] # union method - returns [1, 2, 3, 4, 5], removing duplicates = &
