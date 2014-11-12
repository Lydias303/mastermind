gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'test_helper'
# require 'cli'

class GameTest < Minitest::Test

   def test_user_won
     skip
     solution = ['g','g','g','g']
     guess = ['g','g','g','g']
     game = Game.new
     assert_equal "YOU WON!!!", Game.won?
   end

  #  def test_for_valid_color_user_input

  #    Game.new('gggg', outstream, message)
  #    assert valid_colors?
  #  end



end
