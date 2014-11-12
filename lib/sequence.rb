class Sequence
  attr_accessor :colors

  def initialize
    @colors   = ['r','g','b','y']
  end

  def randomizer
    colors.map do
      colors.sample
    end
  end

  def solution
    @solution ||= randomizer
  end

  def guess_counter
    player_guess += 1
  end
end
