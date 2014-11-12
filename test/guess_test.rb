gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/guess'

class Evaluate <Minitest::Test

  def test_recieved_player_guess
    guess = Guess.new
    guess.stub :get_user_input, "rrgb" do
      assert_equal  ['r','r','g', 'b'] , guess.player_guess
    end
  end

  def test_another_player_guess
    guess = Guess.new
    guess.stub :get_user_input, "brgb" do
      assert_equal  ['b', 'r', 'g', 'b'], guess.player_guess
    end
  end

end
