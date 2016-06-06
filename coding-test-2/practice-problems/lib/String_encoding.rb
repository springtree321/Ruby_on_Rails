#Write a method named encrypt(str) which takes in a string and returns an array of pairs: each pair contains the next distinct letter in the string, and the number consecutive repeats.

def encrypt(str)
    res = []
    idx = 0
    count = 1
    while idx < str.length
        if  str[idx + 1] == str[idx]
            count += 1
        else
            res << [str[idx], count]
            count = 1
        end
        idx += 1
    end
    res 
end


puts encrypt("aaabbcbbaaa") == [["a", 3], ["b", 2], ["c", 1], ["b", 2], ["a", 3]]

puts encrypt("aaaaaaaaaa") == [["a", 10]]
puts encrypt("") == []

puts encrypt("aabbcc") == [["a", 2], ["b", 2], ["c", 2]]
