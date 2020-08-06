# general methods: class, puts (with linebreak), print (without linebreak), p (with doublequotes)
# integer methods: odd?, even?, next, to_s, to_f, times
# string methods: length, upcase, downcase, capitalize, swapcase, reverse, #{string}, empty?, nil?
# float methods: to_i (cuts all after comma), floor + ceil (return integer), round(), abs (how far from 0)
# boolean methods: ==, !=, >, <, >=, <=, &&, ||, between?(a, b), !! - negation (! - false, !! - true), .is_a?(Integer)
# math: + - * / % **

# print "What's your first name? "
# first_name = gets.chomp.downcase
# print first_name

age = 5.next
5.to_s

NAME = "Sasha"
print NAME.length
puts


name = "Vasya"
p "Hello #{name}, how are you?"
p "I'm #{age} years old"
p "In 5 years I'll be #{age + 5} years old"

str = "5"
p str
p str.class

p str.to_i.class #to_i, to_s, to_f

str = str.to_i

p str.next

p 10.class


s = "5"
d = "5.0"
c = 5
f = 5.0

p s == d #false
p c == d #false
p s == c #false
p d == f #false
p s == f #false
p c == f #true
p "a" != "A" #true

p 10.div(5) == 10.modulo(4) #methods .div() and .modulo()

# c = c + 5
c += 5

2.times { |i| puts "String #{i}"}
2.times do |i| #iteration
  puts "Strind #{i + 1}"
  puts "String A"
  puts "String B"
end

puts 5.respond_to?(:next) # is "next" valid method for object "5"?
1 > 2 ? "more" : "less" # ternary operator - if-then-else

def making_a_call(number, code = 380) # defining a method with default parameters
  puts "Calling #{code}-#{number}"
end
making_a_call(982211479)  # invoke method with default arguments
making_a_call(989055393, 389) # invoke method with custom arguments

