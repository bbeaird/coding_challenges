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
        return formatted_result += char.to_i.to_s if char.to_i < 5
        return formatted_result += (char.to_i + 1).to_s
      else
        formatted_result += char
        counter += 1
      end
    end
  end
end

p formatted_division(2, 3) # "0.6667"
p formatted_division(10, 3) # "3.3333"
p formatted_division(50, 3) # "3.3333"

p formatted_division_no_round_method(2, 3) # "0.6667"
p formatted_division_no_round_method(10, 3) # "3.3333"
p formatted_division_no_round_method(50, 3) # "3.3333"