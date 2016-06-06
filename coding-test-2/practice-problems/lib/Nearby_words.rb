#Write a method named one_off_words(str, word_list) which takes in a string and an array of valid words (the word_list). 
#It should return an array of words from the word_list which are the same except for a single letter at a single position.
#Do not return words of that differ in length from str.
#For instance, "boot" and "boom" are nearby (differ in 4th letter), but "loot" and "tool" are not (differ in first and fourth letters). Note that position matters.
#You may assume that the input string and word list contain only lower case letters.

def one_off_words(str, word_list)
    word_list.select {|word| is_nearby?(word, str)}
end

def is_nearby?(word, str)
    return false if word.length != str.length
    count = 0
    idx = 0
    while idx < word.length
        count += 1 if str[idx] != word[idx]
        idx += 1
    end
    return false if count != 1
    true
end


WORDS = ["door", "moot", "boot", "boots"]
puts one_off_words("moor", WORDS) == ["door", "moot"]
#puts one_off_words("moor", WORDS)

