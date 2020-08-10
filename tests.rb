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