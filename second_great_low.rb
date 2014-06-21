arr = [1, 1, 2, 3, 4, 100]
# arr = [1, 3]

# deal with empty, 1, 2, and 3 entry arrays.
# deal with duplicates.

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

p second_great_low(arr)