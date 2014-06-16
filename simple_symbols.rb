def SimpleSymbols(str)
  # set a previous, current, and next
  # use regex to see if current is a letter
  # if so, check that previous and next are + signs
  # if not, return false
  split_str = str.split('')
  split_str.each_with_index do |val, i|
    if val =~ /[a-zA-Z]/
      p val
      return false if i == 0
      return false if !(split_str[i - 1] == '+' && split_str[i + 1] == '+')
    end
  end
  return true
end

p SimpleSymbols("+d+=3=+s+")
p SimpleSymbols("f++d+")