def simple_mode_with_hash(arr)
  count_hash = Hash.new(0)
  arr.each do |num|
    count_hash[num] += 1
  end
  return -1 if count_hash.values.max == 1
  count_hash.max_by { |k, v| v }[0]
end

arr = [5,5,2,2,2,1,5]
p simple_mode_with_hash(arr)
p simple_mode_with_hash([7,8,1,2,3,4,89,94,109,76])
