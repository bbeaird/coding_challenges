def letter_count(str)
  words_arr = str.split(' ')

  array_of_max_letter_counts = words_arr.map do |word|
    letter_hash = Hash.new(0)
    word.split('').each do |letter|
      letter.downcase!
      letter_hash[letter] += 1
    end
    letter_hash.values.max
  end

  max_letter_count = array_of_max_letter_counts.max
  if max_letter_count == 1
    return -1
  else
    words_arr[array_of_max_letter_counts.index(max_letter_count)]
  end
end

p letter_count("Hello apple pie asdf putty samsonite ZZZzzz ZZZZ")
p letter_count("Hello apple pie")
p letter_count("Hello apple pie lll")
p letter_count("No words")