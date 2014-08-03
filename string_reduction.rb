def string_reduction(str)
  abc = ['a', 'b', 'c']
  for i in 1..(str.length - 1)
    prev = str[i - 1]
    curr = str[i]
    chars_to_compare = [prev, curr]
    diff = abc - chars_to_compare
    case
      when diff.length == 1
        str.slice!(i - 1, 2)
        str.prepend(diff.first)
        string_reduction(str)
    end
    prev = str[i]
  end
  return str.length
end

p string_reduction("abcabc") # should return 2
# abcabc
# ccabc
# cbbc
# abc
# cc

p string_reduction("a") # should return 1
p string_reduction("cccc") # should return 4
p string_reduction("abc") # should return 2
