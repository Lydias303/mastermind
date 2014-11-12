class Sequence
  attr_accessor :colors

  def initialize
    @colors   = ['r','g','b','y']  # => ["r", "g", "b", "y"]

  end

  def randomizer
    colors.map do    # => ["r", "g", "b", "y"]
      colors.sample  # => "y", "y", "b", "r"
    end              # => ["y", "y", "b", "r"]
  end

  def solution
    @solution ||= randomizer  # => ["y", "y", "b", "r"]
  end

  def guess_counter
    player_guess += 1
  end
end

#.new.solution  # => ["y", "y", "b", "r"]
