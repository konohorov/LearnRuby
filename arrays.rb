# .to_a - transform to array
# .empty? - checks if no elements, .length == 0
# .nil? - if array (or ny other object) is nil
# .first, .last - may be with arguments
# .pop, .shift - may be with arguments

%w["a", "b", "c"] # array of strings

points = [2, 6, 8, 6, 4, 8, 7, 2, 0, 6]
points.fetch(10, "out of bounds") # returns element by index, if out of bounds can return custom message/value

points[3] # returns element
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
points.pop # removes last element, it can be stored in variable. opposite method .shift
points.pop(2) # removes last 2 elements, it can be stored in array
