require_relative 'hangman_game'

describe Hangman do
  let(:hangman_game) {Hangman.new("banana")}

  it "takes blank array, and replaces correct guesses into new word" do
    expect(hangman_game.replace_guesses("a")).to eq ["_", "a", "_", "a", "_", "a"]
   end

   it "takes blank array, and does not change it if guess is not in word" do
    expect(hangman_game.replace_guesses("y")).to eq ["_", "_", "_", "_", "_", "_"]
  end

   it "finds unique letters, and adds to guessed letter array if they aren't added" do
    expect(hangman_game.find_unique_letters("a")).to eq ["a"]
  end

  it "doesn't add a guess if the guess isn't unique in the array" do
    hangman_game.find_unique_letters("b")
    expect(hangman_game.find_unique_letters("b")).to eq "you already used b."
  end

  it "gives user feedback if their guess was correct and reveals letters" do
    expect(hangman_game.guess_correctly("n")).to eq "n is in: _ _ n _ n _ !"
  end

  it "gives user feedback if their guess was incorrect, and shows previous edits" do
    hangman_game.guess_correctly("n")
    expect(hangman_game.guess_correctly("y")).to eq "sorry, y is not in: _ _ n _ n _."
  end

end