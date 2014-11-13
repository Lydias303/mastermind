require_relative 'test_helper'
require 'game'
require 'sequence'
require 'validate_guess'

class GameTest < Minitest::Test

  def test_you_can_win
    solution  = ['r','r','r','r']
    validator = ValidateGuess.new(['r','r','r','r'])
    assert solution == validator.guess
  end

  def test_you_can_lose
    solution  = ['r','r','r','r']
    validator = ValidateGuess.new(['r','b','b','r'])
    assert solution != validator.guess
  end
end
