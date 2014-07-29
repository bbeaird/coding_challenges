def number_search(str)
  split_str = str.split('')
  numbers_sum = 0
  letters_count = 0
  split_str.each do |i|
    if i =~ /\d/
      numbers_sum += i.to_i
    elsif i =~ /[a-zA-Z]/
      letters_count += 1
    end
  end
  return (numbers_sum / letters_count.to_f).round
end

p number_search("H3ello9-9")
p number_search("i love cake 9 8 7")