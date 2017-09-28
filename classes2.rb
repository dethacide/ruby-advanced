class Table
	@@next_table_id = 1
	attr_reader :id 
	def initialize
	   @id = @@next_table_id
  	  @@next_table_id += 1
	end
    def self.has_legs?
        true
    end
    def self.next_table_id
      @@next_table_id
    end
    def preview_next_id
      @@next_table_id
    end
    def change_next_id(next_id)
      @@next_table_id = next_id
    end

end# class method when self is used in method.
#factory for tables you ask do all tables have legs.
puts Table.has_legs?#do we have a class method or an instance method? in this case a class method.
#one @ is an instance variable.
##two @@ is a class variable.
p Table.next_table_id#access the next table's id.

##p t.next_table_id#you cant execute class methods on instances.

t = Table.new
p t.id
t2 = Table.new
p t2.id
t2.change_next_id (99)
###instances dont have access to class methods, instances method can access a class variable.
puts "The next id back at the factory is #{t2.preview_next_id}"
#class variables should be treated as acceptions rather than rules. instance variables first choice.