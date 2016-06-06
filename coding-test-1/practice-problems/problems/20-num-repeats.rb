# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)
    res=0
    idx=0
    while idx < string.length - 1
        cur=string[idx]
        if cur !="0"
            count=1
            string[idx]="0"
            idx2=idx+1
            while idx2<string.length
                if string[idx2]==cur
                    count+=1
                    string[idx2]="0"
                end
                idx2+=1
            end
            res+=1 if count >1
        end
        idx+=1
    end
    return res
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
# one character is repeated
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)
