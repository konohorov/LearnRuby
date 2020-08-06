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