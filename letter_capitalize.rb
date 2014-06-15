def letter_capitalize(str)
  str.split.map do |word|
    word.capitalize
  end.join(' ')
end

p letter_capitalize('Argument goes here')