=begin
    write a function that takes as input an array of integers and returns 
    the sum of the continuous subarray of that array that has the maximum sum
=end

def max_sum array
    max_sum = 0
    (1..array.count).map { |length|
        sum = max_sum_of_length( array, length)
        max_sum=sum if sum > max_sum
    }
    max_sum
end

def max_sum_of_length array, length
    array = array.dup
    max_sum = 0
    while array.count >= length do
        sum = array.slice(0,length).reduce(:+)
        max_sum=sum if sum > max_sum
        array.shift 1
    end
    max_sum
end

puts max_sum [-2,1,-3,4,-1,2,1,-5,4]
