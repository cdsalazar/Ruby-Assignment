#savo5434 Samuel Volin
class CartesianProduct

	attr_accessor:set1
	attr_accessor:set2

	def initialize(set1,set2)
		@set1 = set1
		@set2 = set2

	end 

	def cart_prob()
		#foreach element in the first set,
		#foreach element in the second set
		#print the product of the first element times the second element
		prod = []
		 self.set1.each { |x|
		 self.set2.each{|y|
		 prod << [x, y]}}
		 return prod
	end
end

test = CartesianProduct.new([:a,:b,:c,:d],[4,2,1])

print test.cart_prob()
