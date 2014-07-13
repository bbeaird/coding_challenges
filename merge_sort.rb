@sorted_arr = []

def merge_sort(arr)
  if arr.length > 1
    merge_sort(arr[0..(arr.length / 2 - 1)]) + merge_sort(arr[(arr.length / 2)..(arr.length - 1)])
  else
    @sorted_arr << arr[0]
  end
  return @sorted_arr
end

arr = [5, 3, 1, 8, 7, 6, 2, 4]
# p merge_sort(arr)

def arr_of_nums(n)
  arr = []
  n.times do |n|
    arr << rand(1_000_000)
  end
  # arr
  arr
end

def sort_arr(arr)
  arr.sort!
  arr.last
end

# arr_of_nums(100)
p sort_arr(arr_of_nums(20_000_000))