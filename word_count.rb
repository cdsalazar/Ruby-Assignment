# Part3: Word Count
#savo5434 Samuel Volin
class WordCountClass
	def initialize(string)
		#@string = string.downcase
		@words = string.scan(/\w+/)
		#puts @word
	end
	def count_words
		#creates a new hash
		count = Hash.new(0)
		#words is an array. words.each invokes the specified method foreach word w
		@words.each {|w| count[w] += 1}
		#print the hash table
		puts count
	end
end
string = gets
word_count = WordCountClass.new(string)
word_count.count_words
		
