=begin

2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

=end

require "test/unit"
include Test::Unit::Assertions

def largest
	i = 1
	loop do 
		largest = 20 * i
		return largest if 
				largest % 20 == 0 && 
				largest % 19 == 0 &&
				largest % 18 == 0 &&
				largest % 17 == 0 &&
				largest % 16 == 0 &&
				largest % 15 == 0 &&
				largest % 14 == 0 &&
				largest % 13 == 0 &&
				largest % 12 == 0 &&
				largest % 11 == 0
				# numbers evenly divisible by 11 until 20 are 
				# also evenly divisible by all smaller numbers
		i +=1
	end
end

assert largest == 232792560