require_relative 'hangman_game'

describe Hangman do
  let(:hangman_game) {Hangman.new("banana")}

  it "user 2 input is equal to instance variable @guesses" do
    expect(hangman_game.user_2_input("h")).to eq "h"
  end

end