arr = [1, 2, 3, 4, 100]

def second_great_low(arr)
  arr.sort!
  arr.shift
  arr.pop
  return "#{arr.first} #{arr.last}"
end

p second_great_low(arr)