require_relative 'hangman_game'

describe Hangman do
  let(:hangman_game) {Hangman.new("cat")}

  it "takes blank array, and replaces correct guesses into new word" do
    expect(hangman_game.replace_guesses("a")).to eq ["_", "a", "_"]
   end

   it "takes blank array, and does not change it if guess is not in word" do
    expect(hangman_game.replace_guesses("y")).to eq ["_", "_", "_"]
  end

   it "finds unique letters, and adds to guessed letter array if they aren't added" do
    expect(hangman_game.find_unique_letters("a")).to eq ["a"]
  end

  it "doesn't add a guess if the guess isn't unique in the array" do
    hangman_game.find_unique_letters("t")
    expect(hangman_game.find_unique_letters("t")).to eq "you already used t."
  end

  it "gives user feedback if their guess was correct and reveals letters" do
    expect(hangman_game.guess_correctly("t")).to eq "t is in: _ _ t !"
  end

  it "gives user feedback if their guess was incorrect, and shows previous edits" do
    hangman_game.guess_correctly("t")
    expect(hangman_game.guess_correctly("y")).to eq "sorry, y is not in: _ _ t."
  end

  it "sets game won to false if word has not been guessed and guesses are not equal to 0" do
    expect(hangman_game.won_or_lost).to be false
  end

end