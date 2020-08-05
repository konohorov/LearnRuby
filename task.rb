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