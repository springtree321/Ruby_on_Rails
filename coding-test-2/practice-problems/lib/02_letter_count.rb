# Write a function, `letter_count(str)` that takes a string and
# returns a hash mapping each letter to its frequency. Do not include
# spaces.
#
# Difficulty: 1/5


def letter_count(str)
    res=Hash.new(0)
    str.each_char do |ch|
        res[ch]+=1 unless ch==' '
    end
    return res
end


puts(letter_count("cat") == {
      "c" => 1,
      "a" => 1,
      "t" => 1
    })
puts(letter_count("moon") == {
      "m" => 1,
      "o" => 2,
      "n" => 1
    })
puts(letter_count("cats are fun") == {
      "a" => 2,
      "c" => 1,
      "e"=> 1,
      "f" => 1,
      "n" => 1,
      "r" => 1,
      "s" => 1,
      "t" => 1,
      "u" => 1
    })
