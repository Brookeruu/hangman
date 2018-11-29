require 'rspec'
require 'pry'
require 'hangman'

describe('Hangman') do
  before()do
    Hangman.clear_player_guess
  end

  describe('#initialize') do
    it('will create a new letter guess') do
    hangman = Hangman.new('A')
      expect(hangman.letter_guess).to(eq('a'))
    end
  end
  describe('#initialize') do
    it('will start with an empty array') do
    hangman = Hangman.new('a')
      expect(Hangman.player_guess).to(eq([]))
    end
  end
  describe('#save_letter') do
    it('will save the letter guess to the player guess class variable') do
    hangman = Hangman.new('d')
    hangman.save_letter
      expect(Hangman.player_guess).to(eq([hangman]))
    end
  end
  describe('#generate_word') do
    it('will generate random word from array and push to compter word class var') do
    Hangman.generate_word
      expect(Hangman.computer_word).to(eq("cat"))
    end
  end
end
