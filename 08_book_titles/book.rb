class Book
	def title= (string)
		little_words = ['and', 'in', 'the', 'of', 'a', 'an']
		titlize = lambda do |x, i|
			if (i != 0 && little_words.include?(x)) || x.match(/[a-z]/) == nil
				x
			else
				x.capitalize!
			end
		end
		@title = string.split.map.with_index(&titlize).join(' ')
	end

	def title
		@title
	end
end