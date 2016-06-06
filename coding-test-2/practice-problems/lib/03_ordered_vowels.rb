# Write a method, `ordered_vowel_words(str)` that takes a string of
# lowercase words and returns a string with just the words containing
# all their vowels (excluding "y") in alphabetical order. Vowels may
# be repeated (`"afoot"` is an ordered vowel word).
#
# You will probably want a helper method, `ordered_vowel_word?(word)`
# which returns true/false if a word's vowels are ordered.
#
# Difficulty: 2/5


def ordered_vowel_words(str)
    strs=str.split(" ")
    res=[]
    strs.each do |word|
        res << word if ordered_vowel_word?(word)
    end
    res.join(' ')
end

def ordered_vowel_word?(word)
    vowel=[]
    word.each_char do |ch|
        if 'aeiou'.include?(ch)
            return false if vowel.length > 0 && ch < vowel.last
            vowel << ch
        end
    end
    true
end





puts(ordered_vowel_words("amends") == "amends")
    puts(ordered_vowel_words("complicated") == "")
    puts(ordered_vowel_words("afoot") == "afoot")
   puts( ordered_vowel_words("ham") == "ham")
    puts(ordered_vowel_words("crypt") == "crypt")
    puts(ordered_vowel_words("o") == "o")
    puts(ordered_vowel_words("tamely") == "tamely")
    phrase = "this is a test of the vowel ordering system"
    result = "this is a test of the system"

    puts(ordered_vowel_words(phrase) == result)