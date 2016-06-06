#Write a method, ordered_word?, which returns whether the letters in a word occur in alphabetical order. Assume the string contains only lowercase letters with no spaces or punctuation.


def ordered_word?(word)
    return word == word.split('').sort.join('')
end

puts ordered_word?("amz") == true
puts ordered_word?("zma") == false
puts ordered_word?("aa") == true # repeats okay

