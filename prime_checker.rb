def prime_checker(num)
  split_num = num.to_s.split("")
  permutations = split_num.permutation.to_a
  permutations.each do |p|
    return 1 if is_this_prime?(p.join("").to_i)
  end
  return 0
end

def is_this_prime?(num)
  return false if num == 1
  for i in 2..num**0.5
    return false if num % i == 0
  end
  return true
end

p prime_checker(910)
p prime_checker(18)

# p is_this_prime?(18)
# p is_this_prime?(19)
# p is_this_prime?(2)
# p is_this_prime?(1)
# p is_this_prime?(3)
# p is_this_prime?(4)