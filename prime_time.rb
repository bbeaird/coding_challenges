def prime_time(num)
  return false if num == 1
  return true if num == 2

  i = 2
  while i < (num**0.5).ceil
    return false if num % i == 0
    i += 1
  end

  return true
end

p prime_time(7)
p prime_time(97)
p prime_time(2)
p prime_time(20)
p prime_time(1000)
p prime_time(1)