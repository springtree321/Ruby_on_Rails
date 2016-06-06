# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
  max=0
  res=nil
  idx=0
  while idx < string.length
    cur=string[idx]
    count=1
    idx2=idx+1
    while idx2<string.length
      count+=1 if string[idx2] == cur
      idx2+=1
    end
    if count>max
      max=count
      res=cur
    end
    idx+=1
  end
  return [res,max]
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
