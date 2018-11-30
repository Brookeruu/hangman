class Hangman
  @@computer_word = ""
  @@display_computer_word = []
  @@body_parts = 0
  @@player_guess = []

  attr_reader :letter_guess
  def initialize(letter_guess)
    @letter_guess = letter_guess.downcase
  end

  def save_letter
    @@player_guess.push(self)
  end

  def self.player_guess
    @@player_guess
  end

  def self.clear
    @@computer_word = ""
    @@display_computer_word = []
    @@body_parts = 0
    @@player_guess = []
  end

  def self.computer_word
    @@computer_word
  end

  def self.display_computer_word
    @@display_computer_word
  end

  def self.body_parts
    @@body_parts
  end

  def self.generate_word
    random_words = ["cat", "banana", "sponge", "house", "climate"]
    @@computer_word = random_words.sample
    @@computer_word.split('').each do |letter|
      @@display_computer_word.push('-')
    end
  end

  def check_matching
    if @@computer_word.include?(self.letter_guess)
      @@computer_word.split('').each_with_index do |letter,i|
        if letter == self.letter_guess
          @@display_computer_word[i] = self.letter_guess
        end
      end
    else @@body_parts +=1
    end
  end

end
