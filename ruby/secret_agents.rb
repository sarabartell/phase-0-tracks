
=begin
-Pseudo code
---Encrypt--
-declare local variables needed for method.
  -counter
  -current letter
  -string numerator
  -result string
-create loop
  -find  out current letter using index
  -take value of current letter and shift it to the right
  -add new value to result
-close loop when index counter iterates through every character in parameter.
  -increase value of counter to move onto next letter.
-add conditional to account for edge cases and blank spaces. Conditional has to go inside loop.
--Decrypt--
-declare local variables needed for method.
  -alphabet variable to include a-z inclusive range to use with indexing/counter
  -counter
  -result string
-loop until value of counter is equal to number or letters in string
  -add conditional to account for edge cases and blank spaces. Conditional has to go inside loop.
  -iterate through parameter string
    -get current letter index value in relation to alphabet array
    -modify index value to reflect the left shift -1
    -use new index value to get new letter value from original alphabet array
-close loop
=end

def encrypt (text)
  current_index=0
  number_letters=text.length
  encrypted_string= ""

 until current_index == number_letters
    current_letter=text[current_index]
    if current_letter == 'z'
      encrypted_string += 'a'
    elsif current_letter == ' '
      encrypted_string+= ' '
    else
      encrypted_string += text[current_index].next
    end
    current_index += 1
  end

   return encrypted_string
end

##

def decrypt(string)

 current_index = 0
  alphabet = ("a".."z").to_a


 until current_index > string.length - 1
    current_letter = string[current_index]
    alpha_index = alphabet.index(current_letter)
    back_alpha_index = alpha_index - 1
    back_alpha_letter = alphabet[back_alpha_index]
    print back_alpha_letter
    current_index += 1
  end

end

puts "Would you like to encrypt or decrypt message?"
method_type=gets.chomp
  if method_type=="encrypt"
    puts "Message to be encrypted:"
    message=gets.chomp
    puts encrypt(message)
  elsif method_type=="decrypt"
    puts "Message to be decrypted:"
    message=gets.chomp
    puts decrypt(message)
  else
    puts "I don't understand."
end

#decrypt(encrypt("swordfish"))
#works because it encrpyts then decrypts at same time to give original input