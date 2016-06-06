# Write a method that takes a string and returns the number of vowels
# in the string. You may assume that all the letters are lower cased.
# You can treat "y" as a consonant.
#
# Difficulty: easy.

def count_vowels(string)
    res=0
=begin
    i=0
    while i < string.length
        cur=string[i]
        if cur=="a" ||cur=="e"||cur=="i"||cur=="o"||cur=="u"
            res+=1
        end
        i+=1
    end
=end
    string.split("").each do |char|
        res+=1 if "aeiou".include?(char)
    end
    return res
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('count_vowels("abcd") == 1: ' + (count_vowels('abcd') == 1).to_s)
puts('count_vowels("color") == 2: ' + (count_vowels('color') == 2).to_s)
puts('count_vowels("colour") == 3: ' + (count_vowels('colour') == 3).to_s)
puts('count_vowels("cecilia") == 4: ' + (count_vowels('cecilia') == 4).to_s)
