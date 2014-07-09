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

def consecutive2(arr)
  arr.sort!
  min = arr[0]
  max = arr[-1]
  return max - min - arr.size + 1
end

arr = [5,10,15]
p consecutive(arr)
p consecutive([1,2,100])

p consecutive2([1,2,100])