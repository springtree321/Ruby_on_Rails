
# Write a function `bubble_sort(arr)` which will sort an array of
# integers using the "bubble sort"
# methodology. (http://en.wikipedia.org/wiki/Bubble_sort)
#
# Difficulty: 3/5
=begin
def bubble_sort(arr)
  i=arr.length-1
  sorted=false
  while i>=0 && !sorted
    sorted = true
    j=0
    while j<i
      if arr[j] > arr[j+1]
        temp=arr[j+1]
        arr[j+1]=arr[j]
        arr[j]=temp
        sorted=false
      end
      j+=1
    end
    i-=1
  end
  arr
end

=end

def bubble_sort(arr)
  sorted = false
  count = arr.length - 1
  until sorted
    sorted = true
    count.times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        sorted = false
      end
    end
    count -= 1
  end

  arr
end



puts(bubble_sort([]) == [])
puts(bubble_sort([1]) == [1])
puts(bubble_sort([5, 4, 3, 2, 1]) == [1, 2, 3, 4, 5])
