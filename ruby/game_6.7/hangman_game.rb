class Hangman
  attr_reader :blank_word, :guess_count
  attr_reader :won

  def initialize(user_1_word)
    @secret_array = user_1_word.split("")
    @guessed_letters = []
    @guess_count = @secret_array.length
    @blank_word = Array.new(@secret_array.length, "_")
  end

##this method takes a guess, sees if its in the saved guesses already, if not it saves the guess, if its already guessed, it says you already used this and adds 1 to the guess count to negate the guess
  def find_unique_letters(guesses)
    if !@guessed_letters.include? guesses
       @guessed_letters << guesses
      else
        @guess_count += 1
        p "you already used #{guesses}."
    end
  end

##this method shows if a guess letter is included in the secret_array, if yes, then it shows blank word at its most up to date spot. otherwise it says, not in array , returns the array of proper guesses
  def guess_correctly?(guesses)
      if @secret_array.include? guesses
          @guess_count -= 1
          replace_guesses(guesses)
          p "#{guesses} is in: #{@blank_word.join(" ")} !"
      else
          @guess_count -= 1
          p "sorry, #{guesses} is not in: #{@blank_word.join(" ")}."
      end
  end

##this method outputs ["_","a","_"] when "a" is guesses for word "cats"
  def replace_guesses(guesses)
    @secret_array.each_index do |i|
      if @secret_array[i] == guesses
        @blank_word[i] = guesses
      end
    end
    @blank_word
  end

##this method is true if conditions in game met or false if not causing loop to run in UI
    def won_or_lost
      if @blank_word == @secret_array && (@guess_count >= 0)
        puts "congrats! you guessed the secret word: #{@blank_word.join("")}"
        won = true
      elsif @blank_word != @secret_array && (@guess_count == 0)
        puts "you ran out of guesses. SAD."
        won = true
      else
        false
      end
    end
end

##UI
# puts "Lets play hangman"
# puts "User 1: Please give me your secret word."
# user_1_input = gets.chomp
# game = Hangman.new(user_1_input)

# puts "Here is the secret word: #{game.blank_word.join(" ")}"
# puts "User 2: Guess letters you think is in the secret word"
# puts "You only have #{game.guess_count} guesses. Repeat letters don't count! Good Luck."

# while !game.won_or_lost
#   puts "User 2 --> Enter a letter:"
#   guesses = gets.chomp
#   game.find_unique_letters(guesses)
#   game.guess_correctly?(guesses)
#   puts "you have #{game.guess_count} guesses left"
#   if game.won == true
#     break
#   end
# end
