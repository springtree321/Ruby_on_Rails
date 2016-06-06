# Write a method that takes in two numbers. Return the greatest
# integer that evenly divides both numbers. You may wish to use the
# `%` modulo operation.
#
# Difficulty: medium.

def greatest_common_factor(number1, number2)
  
=begin
  min = number1 < number2 ? number1 : number2

  while min > 0
    if number1 % min == 0 && number2%min==0
      return min
    end
    min-=1
  end
end
=end

  return greatest_common_factor(number2, number1) if number1 < number2
  while true
    temp = number1 % number2
    return number2 if temp == 0
    number1 = number2
    number2 = temp
  end
end


# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'greatest_common_factor(3, 9) == 3: ' +
  (greatest_common_factor(3, 9) == 3).to_s
)
puts(
  'greatest_common_factor(16, 24) == 8: ' +
  (greatest_common_factor(16, 24) == 8).to_s
)
puts(
  'greatest_common_factor(3, 5) == 1: ' +
  (greatest_common_factor(3, 5) == 1).to_s
)
