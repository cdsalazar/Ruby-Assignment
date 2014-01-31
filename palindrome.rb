# Part2: Palindrome
#savo5434 Samuel Volin
class String
	def palindrome?
		r = self.downcase
		r.gsub!(/[^a-z]/, '')
		k = r.reverse!
		if(k == r)
			return true
		end
		return false
	end
end

class PalindromeClass
	def initialize(word)
		word = word.downcase
		#removes all characters not a-z
		@word = word.gsub(/([^a-z])/, '')
		#puts @word
	end
	def palindrome?
		reverseword = @word.reverse
		#puts reverseword
		if(@word == reverseword)
			return true
		else
			return false
		end
	end
end

module Enumerable
	def palindrome?
		size = self.size
		self.each_with_index { |item, index|
  			return false unless self[size - index - 1] == item
		}
		return true	
	end
end

string = "A man, a plan, a canal; Panama"
puts string.palindrome?
puts ["5", "3", "2", "3", "5"].palindrome?