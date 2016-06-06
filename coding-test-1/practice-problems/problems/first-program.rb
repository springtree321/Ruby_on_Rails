#puts("Hello World!!!")

=begin
array = [0, 1, 2, 3]
i = 0
while i < array.count
  array.delete_at(i)
  i += 1
end

puts array



puts
puts 3.even?

arr=Array.new(5,1)
puts


def two_sum(arr)
    arr.each do |i|
        return true if arr.include?(-i)
    end
    false
end


arr=[-1,2,3,4,1,9]
puts two_sum(arr)

def my_uniq(arr)
    res=[]
    arr.each do |i|
        res << i if !res.include?(i)
    end
    res
end

arr1=[1,2,1,3,3]
puts my_uniq(arr1)==[1,2,3]


puts
def my_transpose(rows)
    cols=[]
    (0..rows[0].count-1).each do |i|
        cur=[]
        (0..rows.count-1).each do |j|
            cur << rows[j][i]
        end
        cols << cur
    end
    cols
end

rows = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [9,10,11]
  ]
  
  
cols = [
    [0, 3, 6, 9],
    [1, 4, 7,10],
    [2, 5, 8,11],
  ]

puts my_transpose(rows)==cols
=end

a = [2,3,4,1,8,1,6,5]
puts a.sort()

puts 2.even?
puts 4 == nil

nums=(1..5)
puts nums.select {|i| Math.sqrt(i).to_i**2 == i}

[1,2,3,4,5].any? do |i|
    i % 2 == 1
end

puts nums

nums = [1, 2, 3, 4, 5]

puts nums.inject(:+) 

puts 

capitals = { 'New York' => 'Albany', 'California' => 'Sacramento' }
puts capitals['New York']
puts capitals.length

wrong_hash = { :a => "banana", :b => "cabbage", :c => "dental_floss", :d => "eel_sushi" }
puts wrong_hash[:c]


def hash_correct(hash)
    res = {}
    hash.each do |key, value|
        res[(key.to_s.ord+1).chr.to_sym] = value
    end
    res
end

puts hash_correct(wrong_hash)
