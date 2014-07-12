  # get common difference and ratio of each term
  # insert these into a hash
  # return Arithmetic if all common differences are equal
  # return Geometric if all common ratios are equal
  # else return -1

def arith_geo(arr)
  common_differences = Hash.new(0)
  common_ratios = Hash.new(0)
  arr.each_with_index do |num, i|
    if !(arr[i + 1].nil?)
      common_differences[arr[i + 1] - arr[i]] += 1
      common_ratios[arr[i + 1] / arr[i]] += 1
    end
  end

  return "Arithmetic" if common_differences.keys.count == 1
  return "Geometric" if common_ratios.keys.count == 1
  return -1
end

p arith_geo([1,2,3,100])
p arith_geo([1,2,3,4])
p arith_geo([1,2,4,8])