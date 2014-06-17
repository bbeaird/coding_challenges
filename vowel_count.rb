def vowel_count(str)
  str.scan(/[aeiou]/i).length
end

p vowel_count("Argument goes here.")