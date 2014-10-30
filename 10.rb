=begin
    The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

	Find the sum of all the primes below two million.
=end

require "test/unit"
include Test::Unit::Assertions

def prime? n  
	(2..Math.sqrt(n)).each {|x| return false if n % x == 0}
	return true
end

MAX=2_000_000

assert (2...MAX).select{|x| prime?(x)}.reduce(:+) == 142913828922


# test prime?
[2, 3, 5, 7].each {|n| assert prime?(n) == true }
assert prime?(40) == false
assert prime?(2) == true
assert prime?(3) == true
assert prime?(5) == true
assert prime?(4) == false
assert prime?(9) == false



