require_relative 'circle_module' # if in the same folder

puts CircleModule.area(3)

class Geometry
  include CircleModule # or "prepend", if module method important
end

geo = Geometry.new
p geo.diameter(3)
p rand(100..999)