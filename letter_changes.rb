def LetterChanges(str)
  letters_array = ('a'..'z').to_a
  split_str = str.split('')
  new_str = ""

  split_str.each_with_index do |letter, i|
    if letter =~ /[a-zA-Z]/
      next_index = letters_array.index(letter.downcase) + 1
      if letter.downcase == letter
        new_str += letters_array[next_index]
      elsif letter.upcase == letter
        new_str += letters_array[next_index].upcase
      end
    else
      new_str += letter
    end
  end
  # vowel_upcase_hash = { 'a' => 'A', 'e' => 'E', 'i' => 'I', 'o' => 'O', 'u' => 'U' }
  new_str = new_str.split('')
  new_str.each_with_index do |letter, i|
    if letter =~ /[aeiou]/
      new_str[i] = letter.upcase
    end
  end
  return new_str.join('')
end

p LetterChanges("Argument goes here")