#Write a function disemvowel(string), which takes in a string, and returns that string will all the vowels removed. Treat "y" as a consonant.

#disemvowel("foobar") == "fbr"
#disemvowel("ruby") == "rby"
#disemvowel("aeiou") == ""

def disemvowel(string)
    res= ""
    idx = 0
    while idx < string.length
        cur=string[idx]
        if "aeiou".include?(cur) 
            idx+=1
            next
        end
        res+=cur
        idx+=1
    end
    return res
end

puts(disemvowel("foobar"))
puts(disemvowel("ruby"))
puts(disemvowel("aeiou"))
puts("done")