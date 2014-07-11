def permutation_step(num)
  permutation_strings = num.to_s.split('').permutation.to_a
  permutation_integers = []
  permutation_strings.each do |p|
    permutation_integers << p.join.to_i
  end
  permutation_integers.sort!
  permutation_integers.each do |n|
    return n if (n > num && n != num)
  end
  return -1
end

num = 41352
p permutation_step(num) # 41523
p permutation_step(999) # 41523