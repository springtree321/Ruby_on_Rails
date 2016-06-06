# Write a function word_unscrambler that takes two inputs: a scrambled
# word and a dictionary of real words.  Your program must then output
# all words that our scrambled word can unscramble to.
#
# Hint: To see if a string `s1` is an anagram of `s2`, split both
# strings into arrays of letters. Sort the two arrays. If they are
# equal, then they are anagrams.
#
# Difficulty: 3/5

    

def word_unscrambler(str, words)
    res=[]
    str_sort = str.split('').sort
    words.each do |word|
        res << word if word.split('').sort==str_sort
    end
    res
end


puts(word_unscrambler("cat", ["tac"]) == ["tac"])
puts(word_unscrambler("cat", ["tom"]) == [])
puts(word_unscrambler("cat", ["tic", "toc", "tac", "toe"]) == ["tac"])
puts(word_unscrambler("cat", ["scatter", "tac", "ca"] )== ["tac"])
puts(word_unscrambler("turn", ["numb", "turn", "runt", "nurt"]) == ["turn", "runt", "nurt"])
