class Animal
	def speak
		puts "Moo Moo"
	end
end

class Dog < Animal
	def speak
		puts "Woof Woof"
	end
end

cow = Animal.new
cow.speak

jumbo = Dog.new
jumbo.speak



