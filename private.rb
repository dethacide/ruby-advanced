#in a class every method under private but before end of class is not accessable using an instance.

# class Table
# 	def a_public_method
# 		a_private_method
# 	end

# 	private#private methods are accsessable inside a public method, any public can call any private.

# 	def a_private_method
# 	end
# end


# # t = Table.new
# # t.a_public_method
# #t.a_private_method
# #almost all Methods are public. initialize will run once and only once. privacy not strictly enforced.

# t = Table.new
# t.a_public_method
# #t.a_private_method
# t.send :a_private_method# a way to force an instance to execute a method


class Parent
  private
  def whisper_secret
    puts "parent's secret"
  end
end

class Child < Parent
  def expose_secret
    whisper_secret
  end
end


c = Child.new
c.expose_secret
#c.whisper_secret