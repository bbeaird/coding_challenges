def check_nums(num1,num2)
  return -1 if num1 == num2
  return true if num2 > num1
  return false
end

p check_nums(4, 10)
p check_nums(10, 3)
p check_nums(4, 4)
