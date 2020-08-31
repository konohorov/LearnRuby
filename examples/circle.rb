# Math, Comparable, Enumerable - inbuilt module

module Circle
  PI = 3.14159
  def self.area(radius) # add self for using inside the module
    PI * radius ** 2
  end

  def diameter(radius)
    radius + radius
  end
end
