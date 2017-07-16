require_relative 'hangman_game'

describe Hangman do
  let(:hangman_game) {Hangman.new("banana")}

  it "takes a secret array, and replaces guesses into new word" do
    expect(hangman_game.replace_guesses("a")).to eq ["_", "a", "_", "a", "_", "a"]
   end

   it "set to false until true conditions met" do
    expect(hangman_game.true_false).to be false
   end

   it "equals a blank array of word given on initialize" do
    expect(hangman_game.blank_word).to eq ["_","_","_","_","_","_"]
    end

    it "make the amount of guesses equal to word length given on initialize" do
      expect(hangman_game.guess_count).to eq 6
    end

    it "keeps track of guesses, total guesses - 1 after first letter entered" do
      expect(hangman_game.play_game("b")).to eq 5
     end

    it "makes is over false" do
      expect(hangman_game.is_over).to eq false
    end

end