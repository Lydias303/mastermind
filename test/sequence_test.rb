gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/sequence'

class SequenceTest < Minitest::Test
  def test_sequence_has_colors
    sequence = Sequence.new
    assert_equal ['r','g','b','y'], sequence.colors
  end

  def test_it_has_a_solution
    sequence = Sequence.new
    sequence.stub :randomizer, ['g','g','b','b'] do
    assert_equal ['g','g','b','b'], sequence.solution
  end
  end
end
