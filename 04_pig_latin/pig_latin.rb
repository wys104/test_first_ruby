def translate(string)
	lam = lambda do |x|
		consonants = x.match(/qu|[^aeiou]qu|([^aeiou]*)/).to_a[0]
		l = consonants.length
		x[0..(l-1)] = '' if l != 0
		x<<consonants<<'ay'
	end
	string.split.map(&lam).join(' ')
end