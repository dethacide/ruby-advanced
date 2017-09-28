# class Table

# end
class Table
	attr_reader :num_legs
	attr_writer :num_legs
    def initialize (num_legs)
        @tabletop = []
        @num_legs = num_legs
    end

    def put_on(something)
    
        @tabletop << something
    end
    def look_at
    	@tabletop
    end
end


a_table = Table.new 4
a_table.put_on 1
a_table.put_on 2

p a_table.look_at
puts "This table has #{a_table.num_legs} legs"
puts "Actually, want to chop off a leg"
a_table.num_legs = 3
puts "This table now has #{a_table.num_legs} legs"

