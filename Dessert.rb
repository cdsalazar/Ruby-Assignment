#savo5434 Samuel Volin
class Dessert

	attr_accessor :name
	attr_accessor :calories

	def initialize(name, calories)
		@name = name
		@calories = calories
	end
	# def name
	# 	return @name
	# end
	# def name=(name)
	# 	@name = name
	# end
	# def calories
	# 	return @calories
	# end
	# def calories=(calories)
	# 	@calories = calories
	# end

	# attr_reader :name
	# attr_writer :name
	# attr_reader :calories
	# attr_writer :calories

	def healthy?
		return (self.calories < 200)
	end
	def delicious?
		return true
	end
end

class JellyBean < Dessert

	attr_accessor :flavor

    def initialize(name, calories, flavor)
        @name = name
        @calories = calories
        @flavor = flavor
    end

    def delicious?
    	if(self.flavor == "black licorice") 
    		return false
    	else return super.delicious?
    	end
    end

end
cake = Dessert.new("cake", 5000)
bljb = JellyBean.new("bljb", 2, "black licorice")
puts cake.healthy? #false
puts bljb.healthy? #true
puts cake.delicious? #true
puts bljb.delicious? #false