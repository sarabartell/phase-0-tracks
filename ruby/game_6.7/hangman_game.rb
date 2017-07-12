#user 1 enters a word
# input: word
# steps: prompt, get chomp, probably store this secret word in some type of array
# output: secret word stored in array

class Hangman

  def secret_word(user_1_input)
    secret_array = user_1_input.split("")
    p secret_array
   end
  secret_word("banana")