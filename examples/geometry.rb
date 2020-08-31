require_relative 'circle' # if in the same folder

puts Circle.area(3)

class Geometry
  include Circle # or "prepend", if module method important
end

geo = Geometry.new
p geo.diameter(3)
p rand(100..999)