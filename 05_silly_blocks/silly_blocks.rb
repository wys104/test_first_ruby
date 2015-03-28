def reverser
	yield.split.map(&:reverse!).join(' ')
end

def adder(a=1)
	yield + a
end

def repeater(i=1)
	n = 0
	i.times do 
		yield
	end
end