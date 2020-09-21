# key => value
# :key => value
# key: value
# .length - returns number of pairs k_v
# .empty?
# .each, .each_key, .each_value - for iteration
# .keys, .values - returns array of k_v
# .sort - return multidimensional array, sorted by keys
# .sort_by { |key, value| key OR value }
# .key?(), .value?() - with argument, returns true OR false
# .delete(key) - removes k_v, rewrites hash
# .select { |key, value| condition } - returns new hash, that meet the condition
# .reject { |key, value| condition } - returns new hash, that does not meet the condition
#

"string".to_sym
"string".intern

person = {name: "Vasya",
age: 25}

p person[:name]

person[:last_name] = "Pupkin" # adding k_v to the hash
person.store(:fool, true) # adding k_v to the hash
person[:name] = "Petya"
p person

person.each { |key, value| }

hash = {a: 5, b: 2, c: 3, d: 5}

def value_count(hash, value)
  count = 0
  hash.each { |x, y| count += 1 if y == value }
  count
end

p value_count(hash, 10)

prices = Hash.new("default") # set default value, if key does noe exist
prices.default = "default" # set default value, if key does noe exist

prices.to_a # return multidimensional array, [[key, value], ... , [key, value]], and vice versa - .to_h

hash1 = {key1: value1, key2: value2, key3: value3}
hash2 = {key1: value4, key2: value5, key3: value3}

hash1.merge(hash2) # return new hash, can be used with !, if keys are identical - value from argument overwrites
