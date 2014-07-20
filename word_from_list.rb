def word_from_list(static_list, input_words)
  # avoid O(n^2) loop inside of loop
  # create a hash from input words then check each word in static list?

  words_hash = Hash.new(0)
  input_words.each do |w|
    words_hash[w.downcase] += 1
  end

  words_in_list = Hash.new(0)
  static_list.each do |word|
    if words_hash.has_key?(word.downcase)
      words_in_list[word] += 1
    end
  end
  words_in_list
end

static_list = ["apple", "Orange", "pear"]
input_words = ["change", "willpower", "friend", "great", "job", "Apple", "nickel", "forty-five", "ace", "monitor"]
p word_from_list(static_list, input_words)