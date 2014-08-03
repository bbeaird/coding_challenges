def string_reduction(str)
  abc = ['a', 'b', 'c']
  for i in 1..(str.length - 1)
    prev = str[i - 1]
    curr = str[i]
    first_two_chars = [prev, curr]
    diff = abc - first_two_chars
    case
      when diff.length == 1
        str.slice!(i - 1, 2)
        str.prepend(diff.first)
        p 'x'*50
        p str
        string_reduction(str)
    end
    prev = str[i]
  end
  return str.length
end

p string_reduction("abcabc") # should return 2
p string_reduction("a")
# abcabc
# ccabc
# cbbc
# abc
# cc

p string_reduction("cccc") # should return 4
