gem 'minitest','~> 5.2'                   # => true
require 'minitest/autorun'                # => true
require 'minitest/pride'                  # => true
require_relative 'test_helper'            # ~> LoadError: cannot load such file -- gem minitest
require_relative '../lib/validate_guess'



class GameTest < Minitest::Test

   def test_user_won
     skip
     solution = ['g','g','g','g']
     guess = ['g','g','g','g']
     game = Game.new
     assert_equal "YOU WON!!!", Game.won?
   end

  #  def test_for_valid_color_user_input
  #    ValidateGuess.new(yyyy).valid?
  #  end

  #  def test_for_valid_color_user_input

  #    Game.new('gggg', outstream, message)
  #    assert valid_colors?
  #  end
end

# >> Run options: --seed 14282
# >>
# >> # Running:
# >>
# >>
# >>
# >> [31mF[0m[32ma[0m[33mb[0m[34mu[0m[35ml[0m[36mo[0m[31mu[0m[32ms[0m[33m [0m[34mr[0m[35mu[0m[36mn[0m in 0.000716s, 0.0000 runs/s, 0.0000 assertions/s.
# >>
# >> 0 runs, 0 assertions, 0 failures, 0 errors, 0 skips

# ~> LoadError
# ~> cannot load such file -- gem minitest
# ~>
# ~> /Users/lydiashafer/.rvm/rubies/ruby-2.1.3/lib/ruby/2.1.0/rubygems/core_ext/kernel_require.rb:55:in `require'
# ~> /Users/lydiashafer/.rvm/rubies/ruby-2.1.3/lib/ruby/2.1.0/rubygems/core_ext/kernel_require.rb:55:in `require'
# ~> /Users/lydiashafer/Desktop/mastermind.rb/test/test_helper.rb:5:in `<top (required)>'
# ~> /Users/lydiashafer/Desktop/mastermind.rb/test/game_test.rb:4:in `require_relative'
# ~> /Users/lydiashafer/Desktop/mastermind.rb/test/game_test.rb:4:in `<main>'
