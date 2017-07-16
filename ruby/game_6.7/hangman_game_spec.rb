require_relative 'hangman_game'

describe Hangman do
  let(:hangman_game) {Hangman.new("banana")}

  it "user 2 input is equal to instance variable @guesses" do
    expect(hangman_game.user_2_input("a")).to eq "a"
  end

  it "takes a secret array, and replaces guesses into new word" do
    hangman_game.user_2_input("a")
    expect hangman_game.replace_guesses.to eq ["_", "a", "_", "a", "_", "a"]
end