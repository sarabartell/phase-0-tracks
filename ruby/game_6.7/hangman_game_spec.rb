require_relative 'hangman_game'

describe Hangman do
  let(:hangman_game) {Hangman.new("banana")}

  it "takes a secret array, and replaces guesses into new word" do
    expect(hangman_game.replace_guesses("a")).to eq ["_", "a", "_", "a", "_", "a"]
   end



end