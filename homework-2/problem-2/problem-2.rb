class Homework

	def shout(string)
		string.upcase
	end

	def repeat_string(string,num)
		for i in 1..num
			puts string
		end
	end

	def calendar(arrayone,arraytwo)
		
		date = {}
		for i in 0..arrayone.length-1
			date[arrayone[i]] = arraytwo[i]

		# Alternative Method
			# date = Hash.new
			# arrayone.each_with_index do |index,var|
			# date[index] = arraytwo[var]
		end
		puts date
	end
end

arrayone = ["New Year", "X-mas", "Independence Day","Thanksgiving"]
arraytwo = ["1st January", "25th December","4th July" ,"24th November"]

times = 5

someinstance = Homework.new
puts someinstance.shout("this message will display in upper-case letters")
someinstance.repeat_string("This message should print #{times} times",times)
someinstance.calendar(arrayone,arraytwo)



