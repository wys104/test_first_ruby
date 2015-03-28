class Dictionary
	def initialize
		@entries = {}
	end
	def entries
		@entries
	end
	def add(entry)
			if entry.class == Hash
				@entries.merge!(entry)
			else
				@entries.store(entry,nil)
			end
	end
	def keywords
		@entries.keys.sort
	end
	def include?(string)
		@entries.key?(string)
	end
	def find(string)
		find = {}
		@entries.keys.each do|word|
			if (word =~ /#{string}/) != nil
				find.store(word, @entries[word])
			end 
		end
		find
	end
	def printable
		print = ""
		self.keywords.each do |word|
			print<<"[#{word}] \"#{@entries[word]}\"\n"
		end
		print.chomp!("\n")
	end
end