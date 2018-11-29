class Hangman
  @@computer_word = ""
  @@display_computer_word = ""
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

  def self.clear_player_guess
    @@player_guess = []
  end

  def self.computer_word
    @@computer_word
  end

  def self.generate_word
    random_words = ["cat", "banana", "sponge", "house", "climate"]
    @@computer_word = random_words.sample
  end

end
