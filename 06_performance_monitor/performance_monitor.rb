def measure(i=1)
	start = Time.now
	i.times do
		yield
	end
	(Time.now - start)/i	
end