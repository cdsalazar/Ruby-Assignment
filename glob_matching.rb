#savo5434 Samuel Volin
def glob_match(files, pattern)
	array = []
	#use built in file matcher
	# source: http://stackoverflow.com/questions/7186361/how-do-i-test-whether-a-string-would-match-a-glob-in-ruby
	files.each {|w| array << w unless !File.fnmatch(pattern, w, File::FNM_DOTMATCH)}
	return array
end
print glob_match( ["part1.rb", "part2.rb", "part2.rb~", ".part3.rb.un~"], "*part*rb?*")