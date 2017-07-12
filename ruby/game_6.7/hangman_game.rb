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
    @secret_array.each {|letter| print "- "}
  end

 # def guessed_letter(user_2_input)
 #    @user_guess = user_2_input
 #    @user_guess
 #  end

  def match_guess_to_secret(gussed_letter)
    @guess_count += 1
    @user_guess = gussed_letter

    p @secret_array.include?(@user_guess)

  end

end

game = Hangman.new("banana")

game.make_word_secret

game.match_guess_to_secret("f")