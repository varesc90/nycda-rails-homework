# The program will display the number from 1 to specifuc number and 
#display FizzBuz when the value is dividable by 15.
#fizz when the number is dividable by 3 and
#Buzz when the number is dividable by 5
  
#Define function Fizzbuzz
def fizzbuzz(num)
  case
  	#return FizzBuzz when num is dividable by 15
    when num % 15 == 0 then 'FizzBuzz'
    #return Fizz when num is dividable by 3 
    when num % 3  == 0 then 'Fizz'
    #return Buzz when num is dividable by 5
    when num % 5  == 0 then 'Buzz'
    #else return num
    else num
  end
end

#define function fizz_buzz_to that will take one parameter
def fizz_buzz_to(limit)
	#for each element from 1 - limit add that element to valiable num
  1.upto(limit).each do |num|
  	#print the return value of method "fizzbuzz(num)"
    puts fizzbuzz(num)
  end
end