require_relative 'hangman_game'

describe Hangman do
  let(:hangman_game) {Hangman.new("banana")}

  it "takes a secret array, and replaces guesses into new word" do
    expect(hangman_game.replace_guesses("a")).to eq ["_", "a", "_", "a", "_", "a"]
   end

   it "finds unique letters, and adds to guessed letter array if they aren't added" do
    expect(hangman_game.find_unique_letters("a")).to eq ["a"]
  end

  it "doesn't add a guess if the guess isn't unique in the array" do
    hangman_game.find_unique_letters("b")
    expect(hangman_game.find_unique_letters("b")).to eq "you already used b."
  end



end