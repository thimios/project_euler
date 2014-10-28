=begin
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.

=end

require "test/unit"
include Test::Unit::Assertions

def palindrome? n 
	n.to_s == n.to_s.reverse
end

largest_palindrome = 0

(100..999).to_a.combination(2).each do |combination|
	product = combination.reduce :*
	if palindrome?(product) && product > largest_palindrome
		largest_palindrome = product
	end 
end

assert largest_palindrome == 906609