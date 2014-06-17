# Iterate over array producing combinations of size 2, 3, 4...arr.length.
# For each combination of size n, see if one of those combinations equals the max of the original array.

def array_addition(arr)
  max = arr.max
  arr.delete(max)
  (2..arr.length).each do |i|
    combinations = arr.combination(i)
    combinations.each do |comb|
      if comb.inject(:+) == max
        return true
        break
      end
    end
  end
  return false
end

p array_addition([4,6,23,10,1,3])
p array_addition([4,6,23,10,1])
p array_addition([1,2,5,8])
p array_addition([10,12,500,1,-5,1,0])

