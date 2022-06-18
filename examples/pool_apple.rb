# include Comparable module

class Apple
  include Comparable

  attr_accessor :weight

  def initialize(weight)
    self.weight = weight
  end

  def <=>(other)
    self.weight <=> other.weight
  end

end

small = Apple.new(0.17)
medium = Apple.new(0.48)
big = Apple.new(0.93)

print "small > medium: "
puts small > medium
print "medium < big: "
puts medium < big
