def run_length(str)
  prev = str[0]
  count = 0
  output = ""

  str.each_char do |char|
    if prev == char
      count += 1
    else
      output << (count.to_s + prev)
      count = 1
    end
    prev = char
  end
  output << count.to_s + prev
end

p run_length("wwwbbbw") # 3w3b1w
p run_length("wwwbbb")
p run_length("aabbcde")