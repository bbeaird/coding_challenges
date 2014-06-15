def letter_changes(str)
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
  return new_str
end

p letter_changes("Argument goes here")