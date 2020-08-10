name = String.new("Sasha")
puts name

words = <<KDA # multiline string
  kill
  death
  assist
KDA

print words

puts "Say \"Hello\" 'world'"
puts "line\nbreak" # does not work for single quotes 'Hello\nworld'
puts "\t tab for string"
p "hello" < "help" # comparison
p "A" < "a" # comparison

first_name = "Harry "
a = first_name.length
last_name = "Potter"
b = last_name.size
full_name = first_name.concat(last_name)
# p first_name << last_name
first_name.prepend(last_name)
p full_name

full_name[0] # first symbol
full_name[-1] # last symbol
full_name[100] # nil
full_name.slice(0) # first symbol
full_name[0, 3] # first three symbols
full_name[0..4] # range of 4 symbols
full_name[0...4] # range of 3 symbols
full_name[3..4] = "new string" # replace symbols
full_name.reverse # returns string in oposite order abc -> cba

# ! - bang methods overwrite the original object
# full_name = "Vasya"
# full_name.reverse! -> overwrites "Vasya" to "aysaV"

full_name.include?("r") # key sensetive
# nil? example - when we create new srting from existing, but mistakenly specify wrong string range
# .split - returns array of strings, splitted by delimiter, default - space, "" - every letter is an element
# .split("") = .chars
# .join() - returns a string from array of strings
# .count - return number of letters in string
# .index(), .rindex() - return index of specified letter
# .insert(3, "string") - inserts substring at the specified position
# .squeeze() - remove duplicate characters, arguments - what to remove, e.g .squeeze(" ") - removed extra spaces, can use with !
# .clear - return empty string, .delete() - removes specified chars