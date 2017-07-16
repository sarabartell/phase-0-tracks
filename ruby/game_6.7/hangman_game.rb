class Hangman
  attr_reader :blank_word, :guess_count
  attr_reader :is_over

  def initialize(user_1_word)
    @secret_array = user_1_word.split("")
    @guessed_letters = []
    @guess_count = @secret_array.length
    @blank_word = Array.new(@secret_array.length, "_")
    @is_over = false
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
        guess_is_correct = true
        puts "revealed: #{@blank_word}."
        @guess_count -= 1
    else
        guess_is_correct = false
        puts "sorry, #{@guesses} is not in #{@blank_word}."
        @guess_count -= 1
    end
  end

  def replace_guesses(guesses)
    @secret_array.each_index do |i|
      if @secret_array[i] == guesses
        @blank_word[i] = guesses
      end
    end
  end

  def true_false
    is_over = false

    if @guess_count == -1 && @blank_word == @secret_array
      @is_over = true
      puts "congrats! you guesses: #{@blank_word.join("")}"
    elsif
      @blank_word == @secret_array
      @is_over = true
      puts "congrats! you guessed the secret word: #{@blank_word.join("")}"
    elsif @guess_count == 0 && @blank_word != @secret_array
      @is_over = true
    puts "sorry, you lost! No more guesses :(!!!!"
    else
      false
    end
  end

end

# game = Hangman.new("banana")

# game.user_2_input("b")
# game.replace_guesses
# game.play_game
# p game.is_over
# UI

puts "Lets play hangman"
puts "User 1: Please give me your secret word."
user_1_input = gets.chomp
game = Hangman.new(user_1_input)


puts "Here is the secret word: #{game.blank_word}"
puts "User 2: Guess letters you think is in the secret word"
puts "You only have #{game.guess_count} guesses. Repeat letters don't count! Good Luck."

while !game.true_false
  if game.is_over == false
    puts "User 2:Enter a letter."
    guesses = gets.chomp
    game.user_2_input(guesses)
    game.replace_guesses(guesses)
    game.play_game

  else
    game.is_over == true
      break
    end

end