class Vehicle
  attr_accessor :engine
  attr_accessor :tires
end

class Car < Vehicle
end

class Motorcycle < Vehicle
end#baby class is inheriting from ve class

print Car.ancestors
puts Car.superclass

print Motorcycle.ancestors
puts Motorcycle.superclass
