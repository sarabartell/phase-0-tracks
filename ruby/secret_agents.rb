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