=begin
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a**2 + b**2 = c**2
For example, 3**2 + 4**2 = 9 + 16 = 25 = 5**2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.

=end

require "test/unit"
include Test::Unit::Assertions

def euler9
	(1..998).each do |c|
		(1..998).each do |b|
			a = 1000 - b - c
			return a*b*c if a**2 + b**2 == c**2
		end
	end
end

assert euler9==31875000
