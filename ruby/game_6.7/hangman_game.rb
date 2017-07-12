class Hangman
  attr_reader :is_over, :guess_count

  def initialize(user_1_input)
    @secret_array = user_1_input.split("")
    @is_over = false
    @guess_count = 0
    p @secret_array
   end

  def guessed_word(user_2_input)
    user_guess = user_2_input.split("")
    p user_guess
  end



end

game = Hangman.new("banana")

game.guessed_word("unicorn")
