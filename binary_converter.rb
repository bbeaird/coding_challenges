def binary_converter(str)
  # split str
  # iterate through reversed string with index
  # result += val * 2^index
  split_str = str.split('')
  split_str.reverse!
  result = 0
  split_str.each_with_index do |val, i|
    result += val.to_i * 2 ** i
  end
  return result
end

p binary_converter('1000')
p binary_converter('1111')
p binary_converter('00000011')
p binary_converter('00000010')