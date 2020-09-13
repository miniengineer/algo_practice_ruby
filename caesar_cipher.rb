# In cryptography, a Caesar cipher, also known as Caesar’s cipher, the shift cipher,
# Caesar’s code or Caesar shift, is one of the simplest and most widely known encryption techniques.
# It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter
# some fixed number of positions down the alphabet.
# For example, with a left shift of 3, D would be replaced by A, E would become B, and so on.
# The method is named after Julius Caesar, who used it in his private correspondence.


# Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:

#   > caesar_cipher("What a string!", 5)
#   => "Bmfy f xywnsl!"
# Quick Tips:

# You will need to remember how to convert a string into a number.
# Don’t forget to wrap from z to a.
# Don’t forget to keep the same case.

def caesar_cipher(str, shift_position)
  alphabet = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]
  rotated_alphabet = alphabet.rotate(shift_position)
  result = ''
  str.split('').each do |letter|
    if alphabet.include? letter.downcase
      result << rotated_alphabet[alphabet.index(letter.downcase)]
    end
  end
  result
end

caesar_cipher("What a string!", 5)
