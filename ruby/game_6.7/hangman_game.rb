#class for Hangman

class Hangman

  def initialize(user_1_word)
    @secret_array = user_1_word.split("")
    @guessed_letters = []
    @guess_count = @secret_array.length
    #6 with banana
    @blank_word = Array.new(@secret_array.length, "_")
  end

  def user_2_input(guesses)
    @guesses = guesses
  end

  def play_game
    if !@guessed_letters.include? @guesses
       @guessed_letters << @guesses
      else
        puts "you already used #{@guesses}."
        @guess_count += 1
    end
    if @secret_array.include? @guesses
        @guess_is_correct = true
        puts "revealed: #{@blank_word}."
        @guess_count -= 1
    else
        @guess_is_correct = false
        puts "sorry, #{@guesses} is not in #{@blank_word}, try again."
        @guess_count -= 1
    end
    p @guess_count
  end

  def replace_guesses
    @secret_array.each_index do |i|
      if @secret_array[i] == @guesses
        @blank_word[i] = @guesses
      end
    end

    def is_over
      if @guess_count == 0
        @is_over = true
        puts "sorry, you lost! No more guesses :("
      elsif
        @blank_word == @secret_array
        @is_over = true
        puts "congrats! you guessed the secret word: #{@blank_word.join("")}"
      else
        false
      end
    end

  end

end

#user interface
game = Hangman.new("banana")

