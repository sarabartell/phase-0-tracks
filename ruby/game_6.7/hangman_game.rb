class Hangman
  attr_reader :is_over, :guess_count

  def initialize(user_1_input)
    @secret_array = user_1_input.split("")
    secret_array = @secret_array
    @is_over = false
    @guess_count = 0
    @guessed_letter = []
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

  def match_guess_to_secret(guesses)
    @guess_count += 1
    @guessed_letter << guesses
    secret_array = @secret_array
    # @user_guess = guessed_letter
    secret_array.each do |letters|
      if @guessed_letter.include?(letters)
        #if "a".include?([b,a,n,a,n,a]) -- true
        print letters
      else
        print  "- "
      end
    end
  end

end

game = Hangman.new("oil")

p game.make_word_secret

game.match_guess_to_secret("b")
game.match_guess_to_secret("i")