gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'test_helper'
require 'match_check'

class MatchCheckTest < Minitest::Test
  def test_compute_color_check
    solution = ['g','r','r','r']
    guess = ['g','y','r','r']
    match = MatchCheck.new
    assert_equal 3, match.color_count(guess, solution)
  end

  def test_compute_positon_check
    solution = ['g','r','r','r']
    guess = ['g','r','r','r']
    match = MatchCheck.new
    assert_equal 4, match.position_count(guess, solution)
  end



end
