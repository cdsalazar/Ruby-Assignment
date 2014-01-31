#savo5434 Samuel Volin
# Part2: Palindrome
def combine_anagrams(words)
	#help from: http://stackoverflow.com/questions/9517745/ruby-anagram-using-stringsum
	return anagrams = words.group_by { |word| word.chars.sort }.values
	#sorts the characters of every word. Anagram words share the same sorted values. group_by puts each set of words into it's own seperate array
end

print combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream'])