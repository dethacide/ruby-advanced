class Person
	def whoami; "I'm a person"; end
end
class Parent 
	def whoami(arg); "and I'm a parent"; end
end

class Child < Parent
	def whoami; puts "I'm a child"; end#comment out and it takes on the traits of parent class.
end

p = Parent.new
puts p.whoami(1)

c = Child.new
c.whoami
####SUPER is a special key word goes to parent class finds a method of same name
##### and runs that method. running whoami in this case. defines a method
#####that accepted an argument
