class Timer
	def seconds
		@seconds = 0
	end

	def seconds= (sec)
		@seconds = sec%60
		@minutes = (sec/60) % 60
		@hours = sec/3600
	end

	def time_string
		"#{"%02d"% @hours}:#{"%02d"% @minutes}:#{"%02d"% @seconds}"
	end
end