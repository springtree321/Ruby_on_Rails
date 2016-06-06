# Write a function, `no_repeats(year_start, year_end)`, which takes a
# range of years and outputs those years which do not have any
# repeated digits.
# You should probably write a helper function, `no_repeat?(year)` which
# returns true/false if a single year doesn't have a repeat.
#
# Difficulty: 1/5


def no_repeat?(year)
    str=year.to_s
    res=[]
    str.each_char do |ch|
        return false if res.include?(ch)
        res << ch
    end
    return true
end


def no_repeats(year_start, year_end)
    res=[]
    (year_start..year_end).each do |yr|
        res << yr if no_repeat?(yr)
    end
    res
end



puts(no_repeats(1234, 1234) == [1234])
puts(no_repeats(1123, 1123) == [])
puts(no_repeats(1980, 1987) == [1980,1982,1983,1984,1985,1986,1987])
