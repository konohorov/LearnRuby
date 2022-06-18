# .start_with?("..."), .end_with?("..."), .include?("...")

str = "Once upon a time in a land far far away..."

str =~ /upon/ # .include? - returns index of first match
str.scan(/a/) # returns array of matches -> [a, a, a, a], can be used with block {}
str.scan(/[er]/) # returns array of matches -> [e, r, e, r]
str.scan(/[^aeiou]/) # what do not include
str.sub("t", "Tatata") # substitutes first "t" only, can be used with !
str.gsub("up", " hh ") # substitute all "up", can be used with !


# /./ - single character wildcard
# /\./ - dot
# /\d/ - digit
# /\d+/ - digits in a row, like ["555", "123", "4567"]
# /\D/ - non-digit
# /\s/ - space
# /\s+/ - spaces in a row
# /\S/ - non-space
# /\A.../ - beginning of string
# /...\z/ - end of string
#