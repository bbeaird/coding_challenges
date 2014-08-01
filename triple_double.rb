def triple_double(num1, num2)
  triples = []
  split_num1 = num1.to_s.split('')
  prevprev1 = split_num1[0]
  prev1 = split_num1[1]

  for i in 2..(split_num1.length - 1)
    curr1 = split_num1[i]
    if curr1 == prev1 && prev1 == prevprev1
      triples << curr1
    end
    prevprev1 = split_num1[i - 1]
    prev1 = split_num1[i]
  end

  doubles = []
  split_num2 = num2.to_s.split('')
  prev2 = split_num2[0]

  for i in 1..(split_num2.length - 1)
    curr2 = split_num2[i]
    if curr2 == prev2
      doubles << curr2
    end
    prev2 = split_num2[i]
  end

  (triples & doubles).any? ? 1 : 0
end

p triple_double(465555, 5579)
p triple_double(67844, 66237)