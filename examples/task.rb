10.times do |i|
  # p 3 * "#{i + 1}".to_i
  # i += 3
  p 3 * (i + 1)
end

5.downto(1) { |i| "Countdownt: #{i}" } # OR upto

1.step(5, 0.25) { |i| puts i}

if !5
  p "abc"
end

arr = [1, 2, 3, 4, 5, 6]

def custom_array(arr, num = 0)
  return arr[0] if num == 0
  arr[0, num]
end

p custom_array(arr)
p custom_array(arr, 1)
p custom_array(arr, 0)
p custom_array(arr, 3)

i = 5 <=> 3
p i

nums = [1, 2, 3, 4, 5]

def sum_of_products(arr1)
  sum = 0
  arr1.each_with_index do |num, i|
    prod = num * i
    sum += prod
  end
  p sum
end

sum_of_products(nums)

arr = [-1, 2, 1, 2, 5, 7, 3]

def print_array(array)
  array.each_with_index do |element, index|
    p element * index if index > element
  end
end

print_array(arr)

def longest_word(sentence)
  longest = ""
  sentence.split.each do |word|
    longest = word if longest.length <= word.length
  end
  p longest
end

longest_word("ab cbard a ab abct")

a = [1, 2, 3]
b = [1, 2, 3]
c = a
d = a.dup # created new array (copy) for d variable

p a == b
p a == c
p a.object_id
p b.object_id
p c.object_id

string = "Once upon a time in a land far far away"

def word_count(str)
  arr1 = str.split
  arr_key = arr1.dup
  arr_value = []
  arr1.each { |word| arr_value << arr1.count(word) }
  hash = arr_key.zip(arr_value).to_h
  hash
end

p word_count(string)

convert_to = gets.chomp.to_i
p convert_to.class
p convert_to

puts "enter text"
text = gets.chomp
words = text.split(" ")

words.each do |word|
  print word
end