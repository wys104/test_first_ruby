class Array
	def sum
		sum = 0
		self.each{|x| sum = sum+x}
		sum
	end
	def square
    	map{|x| x*x}
  	end
  	def square!
    	map!{|x| x*x}
  	end
end