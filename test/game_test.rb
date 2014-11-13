require_relative 'test_helper'
require 'game'
require 'sequence'
require 'validate_guess'

class GameTest < Minitest::Test

  def test_you_can_win
    solution = ['r','r','r','r']
    guess = ValidateGuess.new(['r','r','r','r'])
    assert true, solution == guess
  end

  def test_you_can_lose
    solution = ['r','r','r','r']
    guess = ValidateGuess.new(['r','b','b','r'])
    assert true, solution != guess
  end
end
