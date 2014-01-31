#savo5434 Samuel Volin
class Class

    def attr_accessor_with_history(attr_name)

        attr_name = attr_name.to_s       # make sure it's a string

        attr_reader attr_name            # create the attribute's getter
        attr_writer attr_name
        attr_reader attr_name+"_history" # create bar_history getter
        #help from http://maxivak.com/ruby-metaprogramming-and-own-attr_accessor/
        #class.eval takes in a string and creates code at runtime using the given parameters. Spooky!


        self.class_eval( %Q{
        	def #{attr_name}
        		@#{attr_name}
      		end

      		def #{attr_name}=(val)
        	
        		@#{attr_name}_history = [nil] if @#{attr_name}_history.nil?
        		@#{attr_name}_history << val	
        		@#{attr_name}=val
      		end

      		def #{attr_name}_history
       			@#{attr_name}_history
     		end
        })

    end

end
class Foo

    attr_accessor_with_history :bar
    def initialize(value)
    	self.bar = value
    end
end


f = Foo.new("test!")

f.bar = 1

f.bar = 2

print f.bar_history # => if your code works, should be [nil, 1, 2]