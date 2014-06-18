# create a separate method to determine if number is prime
# until i == num keep finding primes and iterating i (only when prime)
# I'm not using prime? - that'd be cheating ;0)

def prime_mover(num)
  return 2 if num == 1

  prime_index = 1
  num_to_check = 2

  until prime_index - 1 == num
    if is_prime?(num_to_check)
      prime_index += 1
      num_to_check += 1
    else
      num_to_check += 1
    end
  end

  return num_to_check - 1
end

def is_prime?(num)
  return false if num == 1
  i = 2
  while i < num**0.5.ceil
    return false if num % i == 0
    i += 1
  end
  return true
end

p prime_mover(1)
p prime_mover(2)
p prime_mover(3)
p prime_mover(4)
p prime_mover(5)
p prime_mover(6)
p prime_mover(7)
p prime_mover(8)
p prime_mover(9)
p prime_mover(100)

p is_prime?(1)
p is_prime?(2)
p is_prime?(3)
p is_prime?(4)