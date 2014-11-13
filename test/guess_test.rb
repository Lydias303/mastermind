gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require_relative 'test_helper'
require 'validate_guess'

class Evaluate <Minitest::Test

  def test_recieved_player_guess
    skip
    guess = Guess.new
    guess.stub :get_user_input, "rrgb" do
      assert_equal  ['r','r','g', 'b'] , guess.player_guess
    end
  end

  def test_another_player_guess
    skip
    guess = Guess.new
    guess.stub :get_user_input, "brgb" do
      assert_equal  ['b', 'r', 'g', 'b'], guess.player_guess
    end
  end

  def test_its_a_valid_guess
    validator = ValidateGuess.new('rrrr'.chars)
    assert validator.valid?
  end

  def test_it_is_an_invalid_guess
    validator = ValidateGuess.new('xxxx'.chars)
    refute validator.valid?
  end

  def test_it_is_invalid_because_it_is_too_long
    validator = ValidateGuess.new('xxxxx'.chars)
    assert validator.too_long?
    refute validator.too_short?
  end

  def test_it_is_invalid_beacuase_it_is_too_short
    validator = ValidateGuess.new('xxx'.chars)
    assert validator.too_short?
    refute validator.too_long?
  end


end
