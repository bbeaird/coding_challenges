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

p swap_case("Hello Mr. Brantley Beaird")