require 'sequence'
require 'match_check'
require 'validate_guess'
class Game

  attr_reader :instream, :outstream, :message, :solution, :player_guess, :color_count


  def initialize(instream, outstream, message)
    @solution = Sequence.new.solution
    @player_guess = ""
    @instream = instream
    @outstream = outstream
    @message = message
    @guess_counter = 0

  end

  def play
    puts @solution.join
    until quit? || won?
      @player_guess = @instream.gets.chomp.chars
      if check_quit?
        outstream.puts message.are_you_sure_quit
      elsif too_long?
        outstream.puts message.too_long
      elsif too_short?
          outstream.puts message.too_short
      elsif invalid_colors?
        outstream.puts message.invalid_guess
      elsif won?
        outstream.puts message.won
      else
        color_count    = MatchCheck.color_count(player_guess, solution)
        position_count = MatchCheck.position_count(player_guess, solution)
        outstream.puts message.guess_stats(color_count, position_count, guess_counter)
      end
    end
  end
  def quit?
    @player_guess == ["q"]
  end

  def too_long?
    @player_guess.length > 4
  end

  def too_short?
    @player_guess.length < 4
  end

  def check_quit?
    @player_guess == ["q"]
  end

  def invalid_colors?
    !ValidateGuess.new(@player_guess).valid?
  end

  def won?
    @player_guess == @solution
  end

  def guess_counter
    @player_guess.count == 4
    @guess_counter += 1
  end
end
