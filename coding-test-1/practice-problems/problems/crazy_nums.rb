#Write a method crazy_nums that takes a number, max, and returns an array of the integers that

#    ARE less than max
#    AND ARE divisible by either three or five
#    BUT ARE NOT divisible by both three and five

#You should return the result in increasing order.

#You may wish to use the modulo operation: 5 % 2 returns the remainder when dividing 5 by 2: 1. If num is divisible by i, then num % i == 0.

#crazy_nums(3) == []
#crazy_nums(10) == [3, 5, 6, 9]
#crazy_nums(20) == [3, 5, 6, 9, 10, 12, 18]


def crazy_nums(max)
    res = []
    idx = 3
    while idx < max
        if (idx % 3 == 0 || idx % 5 == 0) && idx % 15 != 0
            res.push(idx)
        end
        idx += 1
    end
    return res
end

puts("begin")
puts(crazy_nums(3)==[])
puts("done")
puts(crazy_nums(10) == [3, 5, 6, 9])
puts("done")
puts(crazy_nums(20)== [3, 5, 6, 9, 10, 12, 18])
puts("done")