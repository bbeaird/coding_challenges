def letter_changes(str)
  str.split('').map do |char|
    char.next! if char =~ /[a-zA-Z]/
    char.upcase! if char =~ /[aeiou]/
    char
  end.join
end

p letter_changes("Argument goes here")
