require 'rspec'
require 'pry'
require 'hangman'

describe('Hangman') do
  before()do
    Hangman.clear
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
  describe('.generate_word') do
    it('will generate random word from array and push to compter word class var') do
    Hangman.generate_word
      expect(Hangman.computer_word).to(eq("cat"))
    end
  end
  describe('.generate_word') do
    it('create array of dashes equal to length comp word') do
    Hangman.generate_word
    expect(Hangman.display_computer_word).to(eq(["-", "-", "-"]))
      expect(Hangman.computer_word).to(eq("cat"))
    end
  end
  describe('.check_matching') do
    it('changes dashes to letters if in comp word') do
    Hangman.generate_word
    hangman = Hangman.new('a')
    hangman.check_matching
    expect(Hangman.display_computer_word).to(eq(["-", "-", "-"]))
    end
  end
  describe('.check_matching') do
    it('changes dashes to letters if in comp word') do
    Hangman.generate_word
    hangman = Hangman.new('z')
    hangman.check_matching
    expect(Hangman.body_parts).to(eq(1))
    end
  end

end
