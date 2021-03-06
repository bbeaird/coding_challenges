def formatted_division(num1, num2)
  formatted_result = (num1 / num2.to_f).round(4).to_s
end

def formatted_division_no_round_method(num1, num2)
  formatted_result = ""
  counter = 0
  result = (num1 / num2.to_f).to_s

  past_decimal_point = false
  result.each_char do |char|
    if past_decimal_point == false
      if char == '.'
        past_decimal_point = true
      end
      formatted_result += char
    else
      if counter == 3
        if char.to_i < 5
          formatted_result += char.to_i.to_s
          break
        else
          formatted_result += (char.to_i + 1).to_s
          break
        end
      else
        formatted_result += char
        counter += 1
      end
    end
  end

  result_split_on_decimal = formatted_result.split('.')

  until result_split_on_decimal[1].length == 4
    result_split_on_decimal[1] += '0'
  end
  nums_after_decimal = result_split_on_decimal[1]

  nums_before_decimal = result_split_on_decimal[0].split('')
  nums_before_decimal.reverse!
  nums_before_decimal.map!.with_index do |num, i|
     (i + 4) % 3 == 0 ? num = ',' + num : num
  end
  nums_before_decimal.reverse!
  nums_before_decimal = nums_before_decimal.join('')

  formatted_result = nums_before_decimal + '.' + nums_after_decimal
  return formatted_result
end

def formatted_division2(num1, num2)

end

p formatted_division(2, 3) # "0.6667"
p formatted_division(10, 3) # "3.3333"
p formatted_division(50, 3) # "3.3333"

p formatted_division_no_round_method(2, 3) # "0.6667"
p formatted_division_no_round_method(10, 3) # "3.3333"
p formatted_division_no_round_method(50, 3)
p formatted_division_no_round_method(503394930, 43)
p formatted_division_no_round_method(9112, 2)
p formatted_division_no_round_method(5, 2)
p formatted_division_no_round_method(2, 4)
p formatted_division_no_round_method(9, 8)
p formatted_division_no_round_method(101077282, 21123)
