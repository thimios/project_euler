=begin
The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143?

=end

require "test/unit"
include Test::Unit::Assertions


def prime_factors(n)
  return Array.new if n == 1
  f = (2..n).detect {|x| n % x == 0}
  [f].concat prime_factors(n / f)
end

assert prime_factors(600851475143).max == 6857