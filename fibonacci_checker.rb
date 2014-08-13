def fibonacci_checker(num)
  return "yes" if num == 0 || num == 1 || num == 2
    f1 = 1
    f2 = 2
    curr = 3
  until curr >= num do
    curr = f1 + f2
    f1 = f2
    f2 = curr
  end

  if curr ==  num
    return "yes"
  else
    return "no"
  end
end

p fibonacci_checker(21)
p fibonacci_checker(23)