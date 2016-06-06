# Write a method that returns the `n`th prime number. Recall that only
# numbers greater than 1 can be prime.
#
# Difficulty: medium.

# You may use our `is_prime?` solution.
def is_prime?(number)
  return false if number <= 1
  idx = 2
  while idx <= number / 2
    return false if (number % idx) == 0
    idx += 1
  end
  true
end

def nth_prime(n)
  count = 0
  cur = 2
  while true
    if is_prime?(cur) 
      count+=1
      return cur if count == n
    end
    cur+=1
  end
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('nth_prime(1) == 2: ' + (nth_prime(1) == 2).to_s)
puts('nth_prime(2) == 3: ' + (nth_prime(2) == 3).to_s)
puts('nth_prime(3) == 5: ' + (nth_prime(3) == 5).to_s)
puts('nth_prime(4) == 7: ' + (nth_prime(4) == 7).to_s)
puts('nth_prime(5) == 11: ' + (nth_prime(5) == 11).to_s)
puts(nth_prime(3))
puts(nth_prime(4))
puts(nth_prime(5))
