class Temperature
	def initialize(options={})
		@f = options[:f]
		@c = options[:c]
	end
	def in_fahrenheit
		if @f == nil
			@f = Temperature.ctof(@c)
		end
		@f
	end
	def in_celsius
		if @c == nil
			@c = Temperature.ftoc(@f)
		end
		@c
	end
	class << self
		def from_celsius(num)
			self.new(c:num)
		end
		def from_fahrenheit(num)
			self.new(f:num)
		end
		def ftoc(num)
			(num-32.0)*5/9
		end
		def ctof(num)
			num*9.0/5+32			
		end		
	end
end

class Celsius < Temperature
	def initialize(num)
		@c = num
	end
end

class Fahrenheit < Temperature
	def initialize(num)
		@f = num
	end
end