#Prerequisites=ruby classes
#Ruby Exceptions
#How to be a hero
#When to give up
#Backtracing

####################Initialize Error####

# class Table
#    attr_accessor :num_legs
    
#    def initialize(num_legs)
#     if num_legs > 0
#     @num_legs = num_legs
# 	else
# 	@num_legs = 4
#    end
# end
# end

#  table = Table.new(-1)
#  puts table.num_legs

#  class Table
#    attr_accessor :num_legs
    
#    	def initialize(num_legs)
#    	raise "Halt!"
#     if num_legs > 0
#       @num_legs = num_legs
# 	else
# 	#raise "Invalid number of legs."
#    	end
#    end
# end

#  table = Table.new(-1)
#  puts table.num_legs
#  puts "Hello world!"


#############Error Recovery##############

# def add_two(number)
#   unless number.respond_to? :+
#     raise "Invalid argument"
#   end
#   number + 2
# end

# begin
# puts add_two({})
# end

# ruby errors.rb
# errors.rb:46:in `add_two': Invalid argument (RuntimeError)
# 	from errors.rb:50:in `<main>'
# stephaniesMBP8:ruby-advanced Juggernaut$ 

# def add_two(number)
#   unless number.respond_to? :+
#     raise "ArgumentError, Invalid argument"
#   end
#   number + 2
# end

# begin
#     puts add_two({})
# rescue
# 	puts "Sorry!"
# end
#     puts "And we're back!"

# def add_two(number)
#   unless number.respond_to? :+
#     raise ArgumentError, "Invalid argument"
#   end
#   number + 2
# end

# begin
#     puts add_two({})#type error if pass string.
# 	rescue ArgumentError => e
# 	puts "you: #{e.message}. me: Sorry"
# 	rescue
#     puts "What?!"
# end

############Error Backtrace############

# def add_two(number)
#   unless number.respond_to? :+
#     raise ArgumentError, "Invalid argument"
#   end
#   number + 2
# end

# begin
#   	puts add_two("")
# 	rescue ArgumentError
#   	puts "Sorry!"
# 	rescue => e
#   	puts "What?!"
#   	puts e.backtrace
# end

# What?!
# errors.rb:95:in `+'           <pointing to expecting
# errors.rb:95:in `add_two'     <method
# errors.rb:99:in `<main>'      <in main code.  start reading back trace at the bottom.

def a
  b
end

def b
	begin
  c
  	rescue
  	nil
  	end
end

def c
  d
end

def d
  raise "Boom!"
end

begin
  a
  rescue => e
  puts e.backtrace
end

# stephaniesMBP8:ruby-advanced Juggernaut$ ruby errors.rb
# errors.rb:125:in `d'
# errors.rb:121:in `c'
# errors.rb:117:in `b'
# errors.rb:113:in `a'
# errors.rb:129:in `<main>' back trace starts reading from the bottom.
















