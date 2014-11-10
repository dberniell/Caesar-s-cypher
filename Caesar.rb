puts "Type the text you want to cypher"
str = gets.chomp
puts "Enter a number to set the shift\n(if want to shift to the right put a '-' before the number)"
shift = gets.chomp.to_i
shift %= 26
print "'"
str.each_char { |c|
	newchr = c.ord - shift
	if c =~ /[a-z]/
		if newchr < 'a'.ord
			newchr += 26
		elsif newchr > 'z'.ord
			newchr -= 26
		end
	elsif c =~ /[A-Z]/
		if newchr < 'A'.ord
			newchr += 26
		elsif newchr > 'Z'.ord
			newchr -= 26
		end
	else
		print c
		next
	end
	print newchr.chr
}
puts "' = '#{str}' shifted #{shift} position(s)"