def swap2(str)
  modified_str = ""
  digit_letters_digit = str.scan(/\d[a-zA-Z]{1,}\d/)
  digit_letters_digit.each do |w|
    first_digit = w[0]
    last_digit = w[-1]
    replacement = w.dup
    replacement[0] = last_digit
    replacement[-1] = first_digit
    str.gsub!(w, replacement)
  end

  str.each_char do |char|
    if char =~ /[a-zA-Z]/
      if char == char.upcase
        modified_str += char.downcase
      else
        modified_str += char.upcase
      end
    else
      modified_str += char
    end
  end
  modified_str
end

def swap2_way_better(str)
  str.swapcase.gsub!(/(\d)([a-zA-Z]+)(\d)/, '\3\2\1')
end

# p swap2("2S 6 du5d4e 234eee6")
p swap2_way_better("2S 6 du5d4e 234eee6")