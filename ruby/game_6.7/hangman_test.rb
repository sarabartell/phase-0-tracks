class Hangman

  def initialize(user_1_word)
    @secret_array = user_1_word.split("")
    @guessed_letters = []
    @guess_count = @secret_array.length
    #6 with banana
    @blank_word = Array.new(@secret_array.length, "_")
  end

  def is_over
    @guess_count == 0
    #game ends once 6 == 0
    #add an or statement eventually for if the user_2 word == "banana", once figure out how to make user word
  end

  def user_2_input(guesses)
    @guesses = guesses
  end

  # def guess_already_exsists
  #   if @guessed_letters.include? @guesses
  #     puts "you already used #{@guesses}, try again"
  #     # @guess_count = @guess_count
  #   end
  # end

  def guess_is_true
    if !@guessed_letters.include? @guesses
       @guessed_letters << @guesses
      else
        puts "you already used #{@guesses}, try again"
        @guess_count += 1
    end
    if @secret_array.include? @guesses
        @guess_is_correct = true
        p @blank_word
        @guess_count -= 1
    else
        @guess_is_correct = false
        puts "sorry, #{@guesses} is not in #{@blank_word}, try again"
        @guess_count -= 1
    end
    # p @guess_is_correct
    # p @guess_count
    # p @guessed_letters
    # p @guess_count
  end

  def replace_guesses
    index_of_guess = @secret_array.each_index.select {|i| @secret_array[i] == @guesses}
    p index_of_guess
    # if guess_is_true
    #   puts blank_word
    #end
  end

end

game = Hangman.new("banana")

game.user_2_input("a")
game.guess_is_true
game.replace_guesses

game.user_2_input("x")
game.guess_is_true
game.replace_guesses


game.user_2_input("a")
game.guess_is_true
game.replace_guesses


game.user_2_input("a")
game.guess_is_true
game.replace_guesses

game.user_2_input("c")
game.guess_is_true
game.replace_guesses

game.user_2_input("b")
game.guess_is_true
game.replace_guesses

