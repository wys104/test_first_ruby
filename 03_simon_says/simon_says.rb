def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, n = 2)
	a = " #{string}"
	(n-1).times do
		string<<a
	end
	string
end

def start_of_word(string, n)
	string[0,n]
end

def first_word(string)
	a = string.split
	a[0]
end

def titleize(string)
	little_words = ['and', 'over', 'the', 'of']
	l = lambda do |x, i|
			if little_words.include?(x) && i > 0
				x
			else
				x.capitalize!	
			end
		end
	string.split.map.with_index(&l).join(' ')
end
