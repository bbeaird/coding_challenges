def string_scramble(str1, str2)
  str2.each_char do |char|
    return false if str1.sub!(char, "").nil?
  end
  return true
end

p string_scramble("rkqodlw", "world")