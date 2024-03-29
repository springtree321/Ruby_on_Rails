# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.

def third_greatest(nums)
  a=nil
  b=nil
  c=nil
  
  idx=0
  while idx < nums.length
    d=nums[idx]
    if a==nil||d > a
      c=b
      b=a
      a=d
    elsif b==nil|| d>b
      c=b
      b=d
    elsif c==nil||d>c
      c=d
    end
    idx+=1
  end
  return c
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'third_greatest([5, 3, 7]) == 3: ' +
  (third_greatest([5, 3, 7]) == 3).to_s
)
puts(
  'third_greatest([5, 3, 7, 4]) == 4: ' +
  (third_greatest([5, 3, 7, 4]) == 4).to_s
)
puts(
  'third_greatest([2, 3, 7, 4]) == 3: ' +
  (third_greatest([2, 3, 7, 4]) == 3).to_s
)
