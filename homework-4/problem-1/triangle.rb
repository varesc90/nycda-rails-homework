class Triangle
	def initialize (num1,num2,num3)
		@@sideone = num1
		@@sidetwo = num2
		@@sidethree = num3
	end

	def kind
		if (@@sideone == @@sidetwo) && (@@sideone == @@sidethree)
			return :equilateral
		elsif (@@sideone != @@sidetwo) && (@@sidetwo == @@sidethree)
			 return :isosceles
		elsif (@@sideone == @@sidethree) && (@@sideone != @@sidetwo)
			  return :isosceles
		elsif (@@sideone == @@sidetwo) && (@@sidetwo != @@sidethree)
			  return :isosceles
		elsif (@@sideone != @@sidetwo) && (@@sidetwo != @@sidethree) && (@@sideone != @@sidethree)
			  return :scalene
		end
	end

end

