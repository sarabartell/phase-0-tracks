#class for hangman

class Hangman
  attr_reader :is_over, :guess_count, :secret_array, :guessed_letter
  attr_accessor :total_guesses

  def initialize(user_1_input)
    @secret_array = user_1_input.split("")
    secret_array = @secret_array
    @is_over = false
    @guess_count = 0
    @guessed_letter = []
    @guess_correct = true
   end

  def make_word_secret
    secret_array = @secret_array
    hidden_secret_array = secret_array.length
    "- " * hidden_secret_array
  end

  def number_of_guesses
    @total_guesses = @secret_array.length
  end

  def match_guess_to_secret(guesses)
    @guess_count += 1
    @guessed_letter << guesses
    secret_array = @secret_array
    secret_array.each do |letters|
        if @guessed_letter.include?(letters)
        #if "a".include?([b,a,n,a,n,a]) -- true
         print letters
         @guess_correct = true
        else
          print  "- "
          @guess_correct = false
        end
      end
    end

end

#methods/class tests
# game = Hangman.new("oil")

# p game.make_word_secret

# game.match_guess_to_secret("b")
# game.match_guess_to_secret("i")

#user interface

puts "Lets play hangman"
puts "User 1: Please give me your secret word."
user_1_input = gets.chomp
hangman = Hangman.new(user_1_input)
#keep using banana as test word

puts "Here is the secret word: " + hangman.make_word_secret
puts "User 2: Guess letters you think is in the secret word"
puts "You only have #{hangman.number_of_guesses} guesses. Repeat letters don't count! Good Luck."

guesses_left = hangman.number_of_guesses
#6 if word is banana
while !hangman.is_over
  puts "User 2: Enter a letter guess."
  guesses = gets.chomp

  if !hangman.match_guess_to_secret(guesses)
    p hangman.match_guess_to_secret(guesses)
    guesses_left -= 1

    if guess_correct == true
      puts "#{guesses} is in the word!"
    else
      puts "sorry #{guesses} is not in the word, you have #{guesses_left}"
    end
  end

end