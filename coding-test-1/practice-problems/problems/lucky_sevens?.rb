# Write a function lucky_sevens?(numbers), which takes in an array of integers and returns true if any three consecutive elements sum to 7.

#lucky_sevens?([2,1,5,1,0]) == true # => 1 + 5 + 1 == 7
#lucky_sevens?([0,-2,1,8]) == true # => -2 + 1 + 8 == 7
#lucky_sevens?([7,7,7,7]) == false
#lucky_sevens?([3,4,3,4]) == false

def lucky_sevens?(numbers)
    idx = 0
    while idx <= numbers.length - 3
        return true if numbers[idx]+numbers[idx+1]+numbers[idx+2] == 7
        idx+=1
    end
    false
end

puts(lucky_sevens?([2,1,5,1,0]))
puts(lucky_sevens?([0,-2,1,8]))
puts(lucky_sevens?([7,7,7,7]))
puts(lucky_sevens?([3,4,3,4]))
