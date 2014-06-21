def histogram(arr=arr_of_random_nums, bin_size=10)
  max = arr.max
  num_bins = (max / bin_size.to_f).ceil
  bins = Array.new(num_bins, 0)
  arr.each do |num|
    if num == max
      bins[num / bin_size - 1] += 1
    else
      bins[num / bin_size] += 1
    end
  end
  print_histogram(bins, bin_size)
end

def print_histogram(bins, bin_size)
  bins.each_with_index do |count, i|
    p "[#{i * bin_size}, #{i * bin_size + bin_size}) : #{'#'*count}"
  end
end

def arr_of_random_nums(count=50, min=0, max=100)
  arr = []
  count.times do |i|
    arr << rand(min..max)
  end
  return arr
end

# arr = [3, 10, 3, 14, 8, 8, 9, 2, 1, 23, 34, 99, 100]
bin_size = 5

histogram(arr_of_random_nums, bin_size)
