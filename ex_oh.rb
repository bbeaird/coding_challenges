def ex_oh(str)
  arr_of_letters = Hash.new(0)
  str.each_char do |char|
    arr_of_letters[char] += 1
  end
  arr_of_letters['x'] == arr_of_letters['o'] ? true : false
end

p ex_oh('xxooxoxo')
p ex_oh('xxxooo')
p ex_oh('')
p ex_oh('xxooxox')
p ex_oh('x')
p ex_oh('o')
