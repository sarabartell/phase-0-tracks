class Hangman
  attr_reader :is_over, :guess_count

  def initialize(user_1_input)
    @secret_array = user_1_input.split("")
    secret_array = @secret_array
    @is_over = false
    @guess_count = 0
    @secret_array
   end

  def make_word_secret
    secret_array = @secret_array
    hidden_secret_array = secret_array.length
    "- " * hidden_secret_array
  end

 # def guessed_letter(user_2_input)
 #    @user_guess = user_2_input
 #    @user_guess
 #  end

  def match_guess_to_secret(guessed_letter)
    @guess_count += 1
    secret_array = @secret_array
    # @user_guess = guessed_letter
      if secret_array.include?(guessed_letter)
        #if "a".include?([b,a,n,a,n,a]) -- true
        p secret_array.index(guessed_letter)
      end
  end

end

game = Hangman.new("banana")

p game.make_word_secret

game.match_guess_to_secret("a")