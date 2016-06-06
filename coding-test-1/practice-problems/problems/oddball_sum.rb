#Write a function oddball_sum(numbers), which takes in an array of integers and returns the sum of all the odd elements.

#oddball_sum([1,2,3,4,5]) == 9 # => 1 + 3 + 5 == 9
#oddball_sum([0,6,4,4]) == 0
#oddball_sum([1,2,1]) == 2

def oddball_sum(numbers)
    res=0
    numbers.each do |number|
        res+=number if number%2==1
    end
    res
end

puts(oddball_sum([1,2,3,4,5]) )
puts(oddball_sum([0,6,4,4]) )
puts(oddball_sum([1,2,1]))