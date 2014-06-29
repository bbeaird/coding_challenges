def number_addition(str)
  str.split(/\D/).select { |num| !(num.empty?) }.map { |num| num.to_i }.inject(:+)
end

p number_addition("88Hello 3World!")