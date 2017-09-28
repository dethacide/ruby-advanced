# class Parent
#   private
#   def whisper_secret
#     puts "parent's secret"
#   end
# end

# class Child < Parent
#   def expose_secret
#     whisper_secret
#   end
# end



class Parent
  protected#any methods under protected are protected.
  def whisper_family_secret
    puts "shhh!"
  end
end

    class Child < Parent
  def chat(other)
    other.whisper_family_secret
  end
end

class Stranger < Parent#no inheritance from parent method.
  def chat(other) 
    other.whisper_family_secret
  end
end

  jo = Child.new
juha = Child.new
skeev = Stranger.new
jo.chat(juha)
skeev.chat(jo)
