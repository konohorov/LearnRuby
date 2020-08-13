# case, if, unless (statement is false - reverse for if), while (statement is true), until (statement is false, reverse for while)

def rate(score) # case -> when -> then -> else
  case score
  when 0..15 # range from 0 to 15 including
    "great"
  when 16..25 then "good" # when/then view - single line
  when 26..50
    "bad"
  when 65, 66
    "nice job"
  when 67...69 # range fom 67 to 68 including, 69 excluded
    "exclude me"
  else
    "invalid number"
  end
end

p rate(0)
p rate(17)
p rate(50)
p rate(66)
p rate(68)
p rate(75)

unless false
  p "output"
end

# while i < 10 == until i > 9

score = 150
puts "High rate" if score > 100 # inline condition - for IF and UNLESS

y = nil
p y
y ||= 5 # conditional assignment, if object is nil
p y
