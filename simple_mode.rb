def simple_mode_with_hash(arr)
  count_hash = Hash.new(0)
  arr.each do |num|
    count_hash[num] += 1
  end
  count_hash.max_by { |k, v| v }[0]
end

arr = [5,5,2,2,2,1,5]
p simple_mode_with_hash(arr)
