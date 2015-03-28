def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(array)
	array.inject(0){|sum,i| sum + i}
end

def multiply(array)
	array.inject(1){|product,i| product*i}
end

def power(a, b)
	a**b
end

def factorial(a)
	if a < 0
		"factorial of a negative number is undefined."
	elsif a == 0
		1
	else
		a*factorial(a-1)
	end
end