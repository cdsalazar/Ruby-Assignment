#savo5434 samuel volin
class Dessert
	def initialize(name, calories)
		@name = name
		@calories = calories
	end
	def name
		return @name
	end
	def name=(name)
		@name = name
	end
	def calories
		return @calories
	end
	def calories=(calories)
		@calories = calories
	end
	def healthy?
		return (self.calories < 200)
	end
	def delicious?
		return true
	end
end