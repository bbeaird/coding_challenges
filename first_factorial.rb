def factorial_recursive(int)
  if int < 0
    raise "Input must be an integer >= 0."
  elsif int <= 1
    return 1
  else
    factorial = int * factorial_recursive(int - 1)
  end
  return factorial
end

def factorial_iterative(int)
  raise "Input must be an integer >= 0." if int < 0
  i = 1
  factorial = 1

  while i <= int
    factorial *= i
    i += 1
  end

  return factorial
end


p factorial_recursive(4)
p factorial_recursive(6)
# p factorial_recursive(-3)

p factorial_iterative(4)
p factorial_iterative(6)
# p factorial_iterative(-3)