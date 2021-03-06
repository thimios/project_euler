=begin
Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

=end

require "test/unit"
include Test::Unit::Assertions

def euler2
	fib_a = [0,1]
	loop do
	    next_fib = fib_a[-2] + fib_a[-1]
	    break if next_fib > 4_000_000
	    fib_a.push next_fib    
	end
	fib_a.select{|n| n % 2 == 0}.reduce :+
end

assert euler2 == 4613732

