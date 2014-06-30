def powers_of_two(num)
  return true if num == 1
  remainder = num % 2
  return false if remainder != 0
  num = num / 2.to_f
  powers_of_two(num)
end

def powers_of_two_iterative(num)
  while 0 < 1
    remainder = num % 2
    num = num / 2.to_f
    return true if num == 1
    return false if remainder != 0
  end
end

p powers_of_two(128)
p powers_of_two(48)

p powers_of_two_iterative(128)
p powers_of_two_iterative(48)