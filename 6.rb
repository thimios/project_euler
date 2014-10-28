=begin

The sum of the squares of the first ten natural numbers is,

12**2 + 22**2 + ... + 102**2 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)**2 = 55**2 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.	
	
=end
require "test/unit"
include Test::Unit::Assertions

def euler6
	(101 * 50)**2  - (1..100).inject{|sum,x| sum += x**2}
end

assert euler6 == 25164150