def simple_adding_recursive(num)
  if num == 1
    return 1
  else
    result = num + simple_adding_recursive(num - 1)
  end
  return result
end

def simple_adding_iterative(num)
  result = 0
  while num > 0
    result += num
    num -= 1
  end
  return result
end

p simple_adding_recursive(999)
p simple_adding_iterative(999)

