def caesar_cipher(str, num)
  a_to_z = ('a'..'z').to_a
  a_to_z_rotated = ('a'..'z').to_a.rotate(num)
  capital_a_to_z = ('A'..'Z').to_a
  capital_a_to_z_rotated = ('A'..'Z').to_a.rotate(num)
  ciphered_string = ""

  str.each_char do |char|
    if char =~ /[a-z]/
      ciphered_string += a_to_z_rotated[a_to_z.index(char)]
    elsif char =~ /[A-Z]/
      ciphered_string += capital_a_to_z_rotated[capital_a_to_z.index(char)]
    else
      ciphered_string += char
    end
  end
  p str
  p "changes to.............."
  return ciphered_string
end

def caesar_cipher_no_rotate_method(str, num)
  a_to_z = ('a'..'z').to_a
  capital_a_to_z = ('A'..'Z').to_a
  ciphered_string = ""

  str.each_char do |char|
    if char =~ /[a-z]/
      ciphered_string += a_to_z[(a_to_z.index(char) + num) % 26]
    elsif char =~ /[A-Z]/
      ciphered_string += capital_a_to_z[(capital_a_to_z.index(char) + num) % 26]
    else
      ciphered_string += char
    end
  end
  p str
  p "changes to.............."
  return ciphered_string
end

str = "Hello Brantley"
p caesar_cipher(str, 2)
p caesar_cipher_no_rotate_method(str, 2)