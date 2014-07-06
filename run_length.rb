def run_length(str)
  prev = str[0]
  count = 0
  output = ""

  str.each_char.with_index do |char, i|
    if (i == str.length - 1) && count == 1
      output << str[-1] + 1.to_s
    elsif (i == str.length - 1) && count != 1
      count += 1
      output << (count.to_s + prev)
    elsif prev == char
      count += 1
    else
      output << (count.to_s + prev)
      count = 1
    end
    prev = char
  end
  # output << str[-1] + 1.to_s #if i == (str.length - 1) && count == 1
  output
end

p run_length("wwwbbbw")