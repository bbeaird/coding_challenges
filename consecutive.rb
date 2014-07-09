def consecutive(arr)
  arr.sort!
  count = 0
  prev = nil
  arr.each do |num|
    count += (num - prev - 1) unless prev.nil?
    prev = num
  end
  count
end

arr = [5,10,15]
p consecutive(arr)
p consecutive([1,2,3,100])