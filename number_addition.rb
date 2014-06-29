def number_addition(str)
  str.split(/\D/).select { |num| !(num.empty?) }.map(&:to_i).inject(:+)
end

def number_addition2(str)
  str.scan(/\d{1,}/).map(&:to_i).inject(:+)
end

p number_addition("88Hello 3World!")
p number_addition2("88Hello 3World!")