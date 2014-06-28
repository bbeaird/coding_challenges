def dash_insert(num)
  arr_of_digits = num.to_s.split('').map(&:to_i)
  length = arr_of_digits.length

  num_with_dashes = (1..length - 1).map do |i|
    arr_of_digits[i - 1].odd? && arr_of_digits[i].odd? ? arr_of_digits[i - 1].to_s + '-' : arr_of_digits[i - 1].to_s
  end

  num_with_dashes << arr_of_digits.last.to_s
  num_with_dashes.join
end

p dash_insert(123344555)