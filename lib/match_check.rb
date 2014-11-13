require_relative 'sequence'  

class MatchCheck

  def self.color_count(guess, solution)
    count = 0
    copy = solution.dup
    guess.each do |color|
      if copy.include?(color)
        count += 1
        position = copy.index(color)
        copy.delete_at(position)
      end
    end
    count
  end

  def self.position_count(guess, solution)
    guess.zip(solution).count { |x| x[0] == x[1]}
  end
end
