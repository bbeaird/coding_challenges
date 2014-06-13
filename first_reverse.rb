def reverse_string(str)
  reversed_string = []
  str.each_char do |char|
    reversed_string.unshift(char)
  end
  return reversed_string.join('')
end

def reverse_string2(str)
  str.reverse
end

p reverse_string("Coderbyte")
p reverse_string2("Coderbyte")

