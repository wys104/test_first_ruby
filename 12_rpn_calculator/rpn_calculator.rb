class RPNCalculator
	def initialize
		@data = [0]
	end
	def push(num)
		@data<<num
	end
	def plus
		if @data.size < 2
			raise "calculator is empty"
		end
		last_two = @data.pop(2)
		@data[0] = last_two[0]+last_two[1]
	end
	def minus
		if @data.size < 2
			raise "calculator is empty"
		end
		last_two = @data.pop(2)
		@data[0] = last_two[0]-last_two[1]
	end
	def divide
		if @data.size < 2
			raise "calculator is empty"
		end
		last_two = @data.pop(2)
		@data[0] = last_two[0].to_f/last_two[1]		
	end
	def times
		if @data.size < 2
			raise "calculator is empty"
		end
		last_two = @data.pop(2)
		@data[0] = last_two[0].to_f*last_two[1]		
	end
	def tokens(string)
		string.split(' ').map!{|x| x[/\d/] ? x.to_i : x.to_sym}
	end
	def evaluate(string)
		formula = self.tokens(string)
		loop do
			formula.each_index do |i|
				if formula[i].class == Symbol
					a = formula.delete_at(i-2)
					b = formula.delete_at(i-2)
					operator = formula.delete_at(i-2)
					self.push(a)
					self.push(b)
					if operator == :+
						self.plus
					elsif operator == :-
						self.minus
					elsif operator == :/
						self.divide
					elsif operator == :*
						self.times
					else
						raise "unknown operator"
					end
					formula.insert(i-2, @data[0])
					break			
				end
			end
			if formula.length < 3
				break
			end
		end
		@data[0]
	end
	def value
		@data[0]
	end
end