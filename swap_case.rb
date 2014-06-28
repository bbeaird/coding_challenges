def swap_case(str)
  swapped = ""
  str.each_char do |char|
    if char =~ /[a-zA-Z]/
      char == char.upcase ? swapped += char.downcase : swapped += char.upcase
    else
      swapped += char
    end
  end
  return swapped
end

def swap_case2(str)
  str.split('').map { |char| char.swapcase }.join
end

p swap_case("Hello Mr. Brantley Beaird")
p swap_case2("Hello Mr. Brantley Beaird")