def three_five_multiples(num)
  result = 0
  for i in 1..(num - 1)
    if i % 3 == 0 || i % 5 == 0
      result += i
    end
  end
  return result
end

p three_five_multiples(6) # should return 8
p three_five_multiples(100)