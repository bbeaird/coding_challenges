def greatest_common_factor(num1, num2)
  factors1 = get_factors(num1)
  factors2 = get_factors(num2)
  (factors1 & factors2).max
end

def get_factors(num)
  i = 1
  factors = []
  while i <= num
    factors << i if num % i == 0
    i += 1
  end
  factors
end

p get_factors(16)
p greatest_common_factor(36, 54)
p greatest_common_factor(8, 2)