def palindrome(str)
  no_spaces_str = str.gsub(' ', '')
  i = 0
  while i <= no_spaces_str.length
    return false if no_spaces_str[i] != no_spaces_str[-1 - i]
    i += 1
  end
  return true
end

p palindrome("racecar")
p palindrome("never odd or even")
p palindrome("eye")
p palindrome("eyee")
p palindrome("1eye")

