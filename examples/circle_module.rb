# Math, Comparable, Enumerable - inbuilt module
# modules can be 'require', 'include' (methods available for instance variables), 'extend' (methods available for class)

module CircleModule
  PI = 3.14159
  def self.area(radius) # add self for using inside the module
    PI * radius ** 2
  end

  def diameter(radius)
    radius + radius
  end
end
