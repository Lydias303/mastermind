# require_relative 'game'      # ~> LoadError: cannot load such file -- sequence
# require_relative 'sequence'

class ValidateGuess

  attr_accessor :valid_colors, :guess, :length
  def initialize (guess)
    @guess = guess
    @valid_colors = ["r", "g", "b", "y"]
  end


  def valid?
    guess.all? do |char|
      valid_colors.include?(char)
    end
  end
end
