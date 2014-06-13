def longest_word(sen)
  substituted_sentence = sen.gsub(/[^\w\s]/, '')
  split_sentence = substituted_sentence.split(' ')
  index_of_longest_word = 0
  split_sentence.each_with_index do |word, index|
    if word.length > split_sentence[index_of_longest_word].length
      index_of_longest_word = index
    end
  end
  return split_sentence[index_of_longest_word]
end