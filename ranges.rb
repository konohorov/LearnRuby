# class = Range, contains array of objects
# order -> uppercase letters (A-Z), symbols([/]^_'), lowercase letters (a-z)

a = 1..50
b = 1...50
c = "b".."k"

a.first
b.last
a.first(5) # array 1, 2, 3, 4, 5
b.last(1) # last - 1 object = 49
(1..10) # if not assigned to variable
("a".."z") # range of letters

a.size
c.size # returns nil

p c.include?("g") # value exists in range
p a === 25 # value exists in range

puts rand # random value between 0 and 1
puts rand.round(4) # after comma
puts rand(10) # between 0 and 9
puts rand * 10 # between 0 and 9 with comma
puts rand(0..10) # in range, can be with ...
