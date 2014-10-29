=begin
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?

=end

require "test/unit"
include Test::Unit::Assertions

def prime? x
	return true if x == 1 || x == 2
	(2..Math.sqrt(x)).each do |n|
		return false if x % n == 0
	end
	return true
end

# do not run for ever
MAX=999_999

def find_prime prime_index
	candidate_primes = (14..MAX)
	primes_known = 6
	candidate_primes.each do |candidate|
		if prime? candidate
			primes_known += 1
			return candidate if primes_known == prime_index
		end
	end
end

# test prime?
[2, 3, 5, 7, 11, 13].each { |x| assert prime? x}
assert prime?(40) == false 
assert prime?(55000000) == false

# test find_prime
assert find_prime 10_001 == 104743


