def second_great_low(arr)
  size = arr.size
  raise "Empty array!" if size == 0
  raise "Only 1 entry in array!" if size == 1
  return "#{arr.first} #{arr.last}" if size == 2

  arr.sort!
  smallest = arr.first
  second_smallest = nil

  arr.each do |num|
    if num != smallest
      second_smallest = num
      break
    end
  end

  arr.reverse!
  largest = arr.first
  second_largest = nil

  arr.each do |num|
    if num != largest
      second_largest = num
      break
    end
  end

  return "#{second_smallest} #{second_largest}"
end

# make a method using uniq
# make a method using reject?

def second_great_low_uniq(arr)
  size = arr.size
  raise "Empty array!" if size == 0
  raise "Only 1 entry in array!" if size == 1
  return "#{arr.first} #{arr.last}" if size == 2

  arr.sort!.uniq!
  return "#{arr[1]} #{arr[-2]}"
end

arr = [1, 1, 2, 3, 4, 100, 19, 18]

# p second_great_low(arr)
# p second_great_low([1,5])
p second_great_low_uniq(arr)
p second_great_low_uniq([1, 5])