def count_inversions_naive(arr)
  count = 0
  arr.each do |i|
    arr.each do |j|
      count += 1 if j > i
    end
  end
  return count
end

arr = [9,8,7,6,5,4,3,2,1]
p count_inversions_naive(arr)