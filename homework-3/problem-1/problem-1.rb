class Utility
  def count_words(string)
  	words = string.split(/[\s,]+/)
  	list_of_word = Hash.new 0
  	words.each do |var|
  		list_of_word[var] += 1
  	end
  	puts list_of_word
 	end
end


x = Utility.new
x.count_words("the good and the bad and the ugly")
x.count_words("it was the best of time, it was the worse of time")