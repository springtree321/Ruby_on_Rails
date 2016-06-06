# Write a function, `rec_intersection(rect1, rect2)` and returns the
# intersection of the two.
#
# Rectangles are represented as a pair of coordinate-pairs: the
# bottom-left and top-right coordinates (given in `[x, y]` notation).
#
# Hint: You can calculate the left-most x coordinate of the
# intersection by taking the maximum of the left-most x coordinate of
# each rectangle. Likewise, you can calculate the top-most y
# coordinate of the intersection by taking the minimum of the top most
# y coordinate of each rectangle.
#
# Difficulty: 4/5


def rec_intersection(rect1, rect2)
    x_left=[rect1[0][0],rect2[0][0]].max
    y_left=[rect1[0][1],rect2[0][1]].max
    x_right=[rect1[1][0],rect2[1][0]].min
    y_right=[rect1[1][1],rect2[1][1]].min
    
    return nil if x_left>x_right || y_left>y_right
    return [[x_left,y_left],[x_right,y_right]]
end


puts(rec_intersection(
      [[0, 0], [2, 1]],
      [[1, 0], [3, 1]]
    ) == [[1, 0], [2, 1]])
puts(rec_intersection(
      [[1, 1], [2, 2]],
      [[0, 0], [5, 5]]
    ) == [[1, 1], [2, 2]])
puts( rec_intersection(
      [[1, 1], [2, 2]],
      [[4, 4], [5, 5]]
    ) == nil)
puts(rec_intersection(
      [[1, 1], [5, 4]],
      [[2, 2], [3, 5]]
    ) == [[2, 2], [3, 4]])