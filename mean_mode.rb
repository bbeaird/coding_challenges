def mean_mode(arr)
  count_hash = Hash.new(0)
  sum = 0
  count = arr.length

  arr.each do |num|
    count_hash[num] += 1
    sum += num
  end
  mode = count_hash.key(count_hash.values.max)
  mean = sum / count.to_f

  mean == mode ? 1 : 0
end

arr = [1, 2, 3, 3, 3, 3]
arr2 = [4, 4, 4, 6, 2]

p mean_mode(arr)
p mean_mode(arr2)