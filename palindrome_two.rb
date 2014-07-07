def palindrome_two(str)
  str_letters_only = str.gsub(/[^a-zA-Z]/, "")
  str_letters_only.each_char.with_index do |char, i|
    if char.downcase != str_letters_only[-1 - i].downcase
      return false
    end
  end
  return true
end

p palindrome_two("Anne, I vote more cars race Rome-to-Vienna")
p palindrome_two("Anne, I vote more cars race Rome-to-ViennaRRR")
p palindrome_two("A war at Tarawa!")