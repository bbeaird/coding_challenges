def caesar_cipher(str, num)
  a_to_z = ('a'..'z').to_a
  a_to_z_rotated = ('a'..'z').to_a.rotate(num)
  capital_a_to_z = ('A'..'Z').to_a
  capital_a_to_z_rotated = ('A'..'Z').to_a.rotate(num)
  ciphered_string = ""

  str.each_char do |char|
    p char
    if char =~ /[a-z]/
      ciphered_string += a_to_z_rotated[a_to_z.index(char)]
    elsif char =~ /[A-Z]/
      ciphered_string += capital_a_to_z_rotated[capital_a_to_z.index(char)]
    else
      ciphered_string += char
    end
  end
  return ciphered_string
end

str = "Hello Brantley"
p caesar_cipher(str, 2)