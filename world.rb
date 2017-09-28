class Person
  	attr_accessor :hair_color, :name
      	def initialize(hair_color,name)
	        @hair_color = hair_color
	        @name = name
    	end


    		def sings
    			puts "Who wants to live forever?"
    		end

    		def born
    			puts "happy Bithday"
    		end

end

class Wyncoder < Person
	def code
   	 puts "I am coding!"
	end
	def to_s
		 "Banana baby!"
	end
	def inspect
		 "Banana baby!"
	end
end

persona = Person.new("brunette", "Sandy")
personb = Person.new(nil, "Dandy")
walter = Wyncoder.new("black", "walter")

#p walter

puts walter
#p shows us the string associated with Wyncoder.new
#puts gave us a string, "banana baby!"










